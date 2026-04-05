import '../environment/app_env.dart';

class AppConfig {
  static const String devBaseUrl = 'https://metaupspace-task.onrender.com';
  static const String prodBaseUrl = '';

  static String get baseUrl {
    if (Environment.current == AppEnvironment.dev) {
      return devBaseUrl;
    } else {
      return prodBaseUrl;
    }
  }
}
