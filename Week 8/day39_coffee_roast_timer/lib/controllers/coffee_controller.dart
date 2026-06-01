import 'dart:async';
import 'package:flutter/material.dart';

class CoffeeController extends ChangeNotifier {
  int seconds = 0;
  Timer? timer;

  String get stage {
    if (seconds < 20) return "Green";
    if (seconds < 30) return "Light Brown";
    if (seconds < 40) return "Brown";
    return "Dark Brown";
  }

  Color get roastColor {
    if (seconds < 20) return Colors.green;
    if (seconds < 30) return Colors.brown.shade300;
    if (seconds < 40) return Colors.brown;
    return Colors.brown.shade900;
  }

  void startRoasting() {
    timer?.cancel();

    timer = Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        if (seconds >= 50) {
          timer.cancel();
        } else {
          seconds++;
          notifyListeners();
        }
      },
    );
  }

  void forward() {
    if (seconds <= 45) {
      seconds += 5;
      notifyListeners();
    }
  }

  void back() {
    if (seconds >= 5) {
      seconds -= 5;
      notifyListeners();
    }
  }

  void reset() {
    timer?.cancel();
    seconds = 0;
    notifyListeners();
  }
}