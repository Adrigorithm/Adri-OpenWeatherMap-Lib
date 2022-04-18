enum Subscription { free, startup, developer, professional, enterprise }
enum OutputMode { json, xml, html }

/// standard = Kelvin
/// metric = Celcius
/// imperial = Fahrenheit
enum Units { standard, metric, imperial }

class Languages {
  static const String Afrikaans = "af";
  static const String Albanian = "al";
  static const String Arabic = "ar";
  static const String Azerbaijani = "az";
  static const String Bulgarian = "bg";
  static const String Catalan = "ca";
  static const String Czech = "cz";
  static const String Danish = "da";
  static const String German = "de";
  static const String Greek = "el";
  static const String English = "en";
  static const String Basque = "eu";
  static const String Persian_Farsi = "fa";
  static const String Finnish = "fi";
  static const String French = "fr";
  static const String Galician = "gl";
  static const String Hebrew = "he";
  static const String Hindi = "hi";
  static const String Croatian = "hr";
  static const String Hungarian = "hu";
  static const String Indonesian = "id";
  static const String Italian = "it";
  static const String Japanese = "ja";
  static const String Korean = "kr";
  static const String Latvian = "la";
  static const String Lithuanian = "lt";
  static const String Macedonian = "mk";
  static const String Norwegian = "no";
  static const String Dutch = "nl";
  static const String Polish = "pl";
  static const String Portuguese = "pt";
  static const String Portugues_Brasil = "pt_br";
  static const String Romanian = "ro";
  static const String Russian = "ru";
  static const String Swedish = "se";
  static const String Slovak = "sk";
  static const String Slovenian = "sl";
  static const String Spanish = "es";
  static const String Serbian = "sr";
  static const String Thai = "th";
  static const String Turkish = "tr";
  static const String Ukrainian = "ua";
  static const String Vietnamese = "vi";
  static const String Chinese_Simplified = "zh_cn";
  static const String Chinese_Traditional = "sh_tw";
  static const String Zulu = "zu";
}

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

/// Gets the total days in the month of the supplied DateTime (leap year support)
int getDaysinMonth(DateTime date) {
  switch (date.month) {
    case 2:
      if ((date.year % 4 == 0) &
          (date.year % 400 == 0) &
          (date.year % 100 != 0)) {
        return 29;
      }
      return 28;
    case 1 | 3 | 5 | 7 | 8 | 10 | 12:
      return 31;
    default:
      return 30;
  }
}
