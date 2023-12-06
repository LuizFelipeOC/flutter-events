import 'package:flutter/material.dart';

import '../controller/list_events_controller.dart';
import '../controller/states/list_events_state.dart';
import 'card_events/card_events.dart';

class ListOfEvents extends StatefulWidget {
  const ListOfEvents({
    super.key,
  });

  @override
  State<ListOfEvents> createState() => _ListOfEventsState();
}

class _ListOfEventsState extends State<ListOfEvents> {
  final ListEventsController controller = ListEventsController();

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      controller.getEvents();
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: controller,
      builder: (_, state, __) {
        if (state is LoadingListEvents) {
          return Center(
            child: CircularProgressIndicator(
              color: Colors.blue.withOpacity(0.7),
              strokeWidth: 0.8,
            ),
          );
        }

        return ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: 3,
          itemBuilder: (_, index) => const CardEvents(),
        );
      },
    );
  }
}
