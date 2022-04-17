import 'package:adri_owm_lib/src/consts.dart';
import 'package:adri_owm_lib/src/owm_config.dart';
import 'package:adri_owm_lib/src/ratelimitter.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:adri_owm_lib/adri_owm_lib.dart';

void main() async {
  OpenWeatherMapClient client =
      OpenWeatherMapClient(OpenWeatherMapConfig("", Plan(Subscription.free)));

  print(await client.getLocationByName("Beringen"));

  test('sets up two ratelimitter', () {
    //expect(calculator.addOne(2), 3);
    //expect(calculator.addOne(-7), -6);
    //expect(calculator.addOne(0), 1);
  });
}
