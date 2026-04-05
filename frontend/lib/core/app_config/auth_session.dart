import 'package:flutter/foundation.dart';

import '../../features/auth/data/models/response_model/auth_response/auth_response_model.dart';
import '../di/injector.dart';
import '../storage/secure_storage_service.dart';

class AuthSession extends ChangeNotifier {
  bool _isLoggedIn = false;

  bool get isLoggedIn => _isLoggedIn;

  Future<void> init() async {
    final AuthResponseModel? token = await sl<SecureStorageService>()
        .getToken();
    _isLoggedIn = token != null && token.accessToken != null;
  }

  void login() {
    _isLoggedIn = true;
    notifyListeners();
  }

  void logout() {
    _isLoggedIn = false;
    notifyListeners();
  }
}
