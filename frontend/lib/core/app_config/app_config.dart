import '../environment/app_env.dart';

class AppConfig {
  static const String devBaseUrl = 'https://metaupspace-task.onrender.com';
  // TODO : Update Production url here
  static const String prodBaseUrl = 'Update Production url here';

  static String get baseUrl {
    if (Environment.current == AppEnvironment.dev) {
      return devBaseUrl;
    } else {
      return prodBaseUrl;
    }
  }
}
