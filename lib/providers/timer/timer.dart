import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TimerNotifier extends StateNotifier<int> {
  TimerNotifier(state) : super(state);
  Timer? _tick;
  void setTimer(int milliseconds) {
    state = milliseconds;
  }

  void startTimer() {
    _tick = Timer.periodic(const Duration(milliseconds: 1), (timer) {
      state = state - 1;
      if (state == 0) {
        timer.cancel();
      }
    });
  }

  void resetTimer() {
    state = 0;
  }

  void stopTimer() {
    if(_tick != null) {
      _tick!.cancel();
    }
  }

  @override
  void dispose() {
    stopTimer();
    super.dispose();
  }
  
}


final timerProvider = StateNotifierProvider((ref) => TimerNotifier(0));