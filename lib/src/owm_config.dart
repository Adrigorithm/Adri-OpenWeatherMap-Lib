import 'consts.dart';

class OpenWeatherMapConfig {
  String apiKey = "";
  Plan plan;

  /// General API access configuration (DO NOT HARDCODE YOUR TOKEN)
  OpenWeatherMapConfig(this.apiKey, this.plan) {
    if (apiKey.isEmpty) {
      throw const FormatException("API token cannot be empty or null.");
    }
  }
}
