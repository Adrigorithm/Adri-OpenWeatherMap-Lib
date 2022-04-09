import 'consts.dart';

class OpenWeatherMapConfig {
  String apiKey = "";
  Subscription subscription = Subscription.free;

  OpenWeatherMapConfig(this.apiKey, this.subscription) {
    if (apiKey.isEmpty) {
      throw const FormatException("API token cannot be empty or null.");
    }
  }
}
