part of 'notifications_bloc.dart';

sealed class NotificationsEvent {
  const NotificationsEvent();

}

class NotificationStatusChanged extends NotificationsEvent {
  final AuthorizationStatus status;

  NotificationStatusChanged(this.status);
}

// TODO 2: NoficationsReceived #PushMessage
class NoficationsReceived extends NotificationsEvent {
  final PushMessage pushMessage;

  NoficationsReceived(this.pushMessage);
}