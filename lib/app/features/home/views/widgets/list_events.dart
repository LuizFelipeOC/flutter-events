import 'package:flutter/material.dart';

import 'card_events.dart';

class ListOfEvents extends StatelessWidget {
  const ListOfEvents({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: 3,
      itemBuilder: (_, index) => const CardEvents(),
    );
  }
}
