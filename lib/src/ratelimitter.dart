import 'dart:async';

import 'consts.dart';

class Ratelimitter {
  Plan plan;
  static DateTime timerStartMinute = DateTime.now().toUtc();
  static DateTime timerStartMonth = DateTime.now().toUtc();

  int minuteCount = 0;

  Timer timer = Timer.periodic(const Duration(seconds: 1), (timer) {
    var dateTime = DateTime.now().toUtc();
    if (dateTime.compareTo(timerStartMinute.add(const Duration(minutes: 1))) >=
        0) {
      timerStartMinute = dateTime;
    }

    if (dateTime.compareTo(timerStartMonth
            .add(Duration(days: getDaysinMonth(timerStartMonth)))) >=
        0) {
      timerStartMonth = dateTime;
    }
  });

  Ratelimitter(this.plan);
}
