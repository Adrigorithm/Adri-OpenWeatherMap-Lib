import 'dart:convert';

import 'package:adri_owm_lib/src/consts.dart';
import 'package:adri_owm_lib/src/entities.dart';
import 'package:adri_owm_lib/src/owm_config.dart';
import 'package:adri_owm_lib/src/ratelimitter.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:adri_owm_lib/adri_owm_lib.dart';

void main() async {
  OpenWeatherMapClient client = OpenWeatherMapClient(OpenWeatherMapConfig(
      "c50d06c9eb51d5204bf4827bab9d89e7", Plan(Subscription.free)));

  List<Geocoding> locations = List.empty(growable: true);
  for (Map<String, dynamic> node
      in jsonDecode(await client.getLocationByName("London"))) {
    locations.add(Geocoding.fromJson(node));
  }

  print(locations);

  test('sets up two ratelimitter', () {
    //expect(calculator.addOne(2), 3);
    //expect(calculator.addOne(-7), -6);
    //expect(calculator.addOne(0), 1);
  });
}
