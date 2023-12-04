abstract interface class ListEventsState {}

final class IdleListEvents extends ListEventsState {}

final class LoadingListEvents extends ListEventsState {}

final class SuccessListEvents extends ListEventsState {}

final class ErrorListEvents extends ListEventsState {}
