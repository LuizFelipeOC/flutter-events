import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'widgets/home_app_bar.dart';
import 'widgets/list_events.dart';
import 'widgets/searchable_events_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
      child: Scaffold(
        appBar: HomeAppBar(),
        body: Column(
          children: [
            const SearchableEventsWidget(),
            const SizedBox(height: 20),
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: const ListOfEvents(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
