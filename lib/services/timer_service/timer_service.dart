import 'dart:async';
import 'package:flutter/foundation.dart';

class TimerService with ChangeNotifier {
  static final TimerService _singleton = TimerService._internal();

  factory TimerService() {
    return _singleton;
  }

  Timer? timer;
  int start = 0;
  bool _isRunning = false;

  bool get isRunning => _isRunning;

  void startTimer() {
    const oneSec = Duration(seconds: 1);
    timer = Timer.periodic(
      oneSec,
          (Timer timer) {
        if (start < 1) {
          timer.cancel();
          _isRunning = false;
        } else {
          start = start - 1;
        }
        notifyListeners();
      },
    );
    _isRunning = true;
    notifyListeners();
  }

  void cancelTimer() {
    start = 0;
    timer?.cancel();
    timer = null;
    _isRunning = false;
    notifyListeners();
  }

  void resetTimer(int startTime) {
    start = startTime;
    _isRunning = false;
    notifyListeners();
  }

  TimerService._internal();
}
