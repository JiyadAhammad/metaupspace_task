class AuthEndpoints {
  static const String _v1 = '/api/v1';
  static String get login => '$_v1/auth/login';
  static String get register => '$_v1/auth/register';
  static String get refresh => '$_v1/auth/refresh';
}
