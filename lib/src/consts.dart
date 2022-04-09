import 'dart:ffi';

import 'dart:html';

enum Subscription { free, startup, developer, professional, enterprise }

class Plan {
  Subscription subscription = Subscription.free;
  int requestsPerMinute = -1;
  int requestsPerMonth = -1;
  int requestsPerDayOneCallApi = -1;

  Plan(this.subscription) {
    switch (subscription) {
      case Subscription.startup:
        requestsPerMinute = 600;
        requestsPerMonth = 10000000;
        requestsPerDayOneCallApi = 2000;
        break;
      case Subscription.developer:
        requestsPerMinute = 3000;
        requestsPerMonth = 100000000;
        break;
      case Subscription.professional:
        requestsPerMinute = 30000;
        requestsPerMonth = 1000000000;
        break;
      case Subscription.enterprise:
        requestsPerMinute = 200000;
        requestsPerMonth = 5000000000;
        break;
      default:
        requestsPerMinute = 60;
        requestsPerMonth = 1000000;
        requestsPerDayOneCallApi = 1000;
    }
  }
}

int getDaysinMonth(int month) {
  switch (month) {
    case in Range(1, 3, 5, 7; 8, 10, 12):
      break;
    default:
  }
}
