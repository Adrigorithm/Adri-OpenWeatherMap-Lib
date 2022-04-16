library adri_owm_lib;

import 'dart:io';
import 'dart:convert';

import 'package:adri_owm_lib/src/consts.dart';
import 'package:adri_owm_lib/src/owm_config.dart';
import 'package:adri_owm_lib/src/ratelimitter.dart';

class OpenWeatherMapClient {
  static OpenWeatherMapConfig config =
      OpenWeatherMapConfig("apiKey", Plan(Subscription.free));
  final String baseUri = "http://api.openweathermap.org/";
  HttpClient client = HttpClient();

  OpenWeatherMapClient(OpenWeatherMapConfig cfg) {
    config = cfg;
  }

  Ratelimitter rt = Ratelimitter(config.plan);

  Future<String> getLocationByName(String cityName,
      {String stateCode = "", String countryCode = ""}) async {
    var request = await HttpClient().getUrl(Uri.parse(
        baseUri + "geo/1.0/direct?q=" + cityName + "&appid=" + config.apiKey));

    var response = await request.close();

    return await response.transform(const Utf8Decoder()).join();
  }
}

/// A Calculator.
class Calculator {
  /// Returns [value] plus 1.
  int addOne(int value) => value + 1;
}
