import 'package:flutter/material.dart';

import 'states/list_events_state.dart';

class ListEventsController extends ValueNotifier {
  ListEventsController() : super(IdleListEvents());

  Future<void> getEvents() async {
    _emitState(state: LoadingListEvents());

    await Future.delayed(const Duration(seconds: 1), () {
      _emitState(state: SuccessListEvents());
    });
  }

  void _emitState({required ListEventsState state}) => value = state;
}
