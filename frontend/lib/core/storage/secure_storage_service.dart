import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../../features/auth/data/models/response_model/auth_response_model.dart';
import 'storage_keys.dart';

class SecureStorageService {
  SecureStorageService(this._storage);
  final FlutterSecureStorage _storage;

  Future<void> saveToken(AuthResponseModel token) async {
    await _storage.write(
      key: StorageKeys.loginDetails,
      value: jsonEncode(token),
    );
  }

  Future<AuthResponseModel?> getToken() async {
    final String? data = await _storage.read(key: StorageKeys.loginDetails);

    if (data == null) {
      return null;
    }

    final Map<String, dynamic> decodedValue =
        jsonDecode(data) as Map<String, dynamic>;

    return AuthResponseModel.fromJson(decodedValue);
  }

  Future<void> clearToken() async {
    await _storage.delete(key: StorageKeys.loginDetails);
  }

  Future<void> clearAll() async {
    await _storage.deleteAll();
  }
}
