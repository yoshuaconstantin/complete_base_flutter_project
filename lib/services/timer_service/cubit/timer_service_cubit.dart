import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../timer_service.dart';

part 'timer_service_state.dart';

class TimerServiceCubit extends Cubit<TimerServiceState> {
  TimerServiceCubit() : super(TimerServiceInitial());

  final TimerService _timerService = TimerService();

  void startTimer(int startTime) {
    _timerService.start = startTime;

    Timer.periodic(
      const Duration(seconds: 1),
          (timer) {
        if (_timerService.start < 1) {
          timer.cancel();
          emit(TimerServiceStopped());
        } else {
          _timerService.start -= 1;
          emit(TimerServiceRunning(_timerService.start));
        }
      },
    );

    emit(TimerServiceRunning(_timerService.start));
  }

  void cancelTimer() {
    _timerService.cancelTimer();
    emit(TimerServiceStopped());
  }

  void resetTimer(int startTime) {
    _timerService.resetTimer(startTime);
    emit(TimerServiceInitial());
  }

  void updateTimer() {
    if (_timerService.isRunning) {
      emit(TimerServiceRunning(_timerService.start));
    } else {
      emit(TimerServiceStopped());
    }
  }
}

