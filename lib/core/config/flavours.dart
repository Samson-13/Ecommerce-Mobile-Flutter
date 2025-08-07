enum Flavor { development, staging, production }

class F {
  static Flavor? appFlavor;

  static String get title {
    switch (appFlavor) {
      case Flavor.development:
        return 'App Dev';
      case Flavor.production:
        return 'App';
      default:
        return 'App';
    }
  }

  static String get apiUrl {
    switch (appFlavor) {
      case Flavor.development:
        return 'https://api.dev.example.com';
      case Flavor.production:
        return 'https://api.example.com';
      default:
        return 'https://api.example.com';
    }
  }
}
