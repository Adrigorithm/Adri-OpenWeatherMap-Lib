import 'dart:async';

import 'consts.dart';

class Ratelimitter {
  Subscription subscription = Subscription.free;
  DateTime timerStartMinute = DateTime.now().toUtc();
  DateTime timerStartMonth = DateTime.now().toUtc();
  Timer timer = Timer.periodic(const Duration(seconds: 1), timerTick());
  int minuteCount = 0;

  Ratelimitter(this.subscription) {
    // Start timer
  }

  void Function(Timer timer) timerTick() {
    var dateTime = DateTime.now().toUtc();
    if (dateTime.compareTo(timerStartMinute.add(const Duration(minutes: 1))) >=
        0) {
      timerStartMinute = dateTime;
    }

    if (dateTime.compareTo(
        timerStartMonth.add(const Duration(days: timerStartMonth.month)))) {}
  }
}
