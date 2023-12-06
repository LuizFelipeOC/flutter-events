import 'package:flutter/material.dart';

import '../../controller/card_events_controller.dart';
import 'header_card_events.dart';
import 'network_banner_events.dart';

class CardEvents extends StatefulWidget {
  const CardEvents({
    super.key,
  });

  @override
  State<CardEvents> createState() => _CardEventsState();
}

class _CardEventsState extends State<CardEvents> {
  final controller = CardEventsController();

  @override
  void initState() {
    controller.animationEntrance();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: controller,
      builder: (_, value, __) {
        return AnimatedCrossFade(
          sizeCurve: Curves.easeInOut,
          duration: const Duration(milliseconds: 900),
          crossFadeState: value ? CrossFadeState.showSecond : CrossFadeState.showFirst,
          firstChild: Container(),
          secondChild: Card(
            elevation: 1,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: const Stack(
              alignment: Alignment.bottomLeft,
              children: [
                NetWorkBannerEvents(),
                HeaderCardEvents(),
              ],
            ),
          ),
        );
      },
    );
  }
}
