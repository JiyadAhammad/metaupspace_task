import '../../features/auth/data/models/response_model/auth_response_model.dart';
import '../di/injector.dart';
import '../storage/secure_storage_service.dart';

class AuthSession {
  static bool isLoggedIn = false;

  static Future<void> init() async {
    final AuthResponseModel? token = await sl<SecureStorageService>()
        .getToken();

    isLoggedIn = token != null && token.accessToken != null;
  }
}
