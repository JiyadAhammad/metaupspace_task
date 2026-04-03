import '../di/injector.dart';
import '../storage/secure_storage_service.dart';

class AuthSession {
  static bool isLoggedIn = false;

  static Future<void> init() async {
    final String? token = await sl<SecureStorageService>().getToken();

    isLoggedIn = true;
    // isLoggedIn = token != null && token.isNotEmpty;
  }
}
