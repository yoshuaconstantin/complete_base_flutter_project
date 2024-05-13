part of 'timer_service_cubit.dart';

@immutable
abstract class TimerServiceState {}

class TimerServiceInitial extends TimerServiceState {
  TimerServiceInitial();
}

class TimerServiceRunning extends TimerServiceState {
  final int timeRemaining;
  TimerServiceRunning(this.timeRemaining);
}

class TimerServiceStopped extends TimerServiceState {
  TimerServiceStopped();
}


