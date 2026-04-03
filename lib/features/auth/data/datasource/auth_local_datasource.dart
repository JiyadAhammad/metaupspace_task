import '../../../../core/storage/secure_storage_service.dart';

abstract class IAuthLocalDatasource {
  Future<void> saveToken(String token);
  Future<String?> getToken();
}

class AuthLocalDatasourceImpl implements IAuthLocalDatasource {
  AuthLocalDatasourceImpl(this.storage);
  final SecureStorageService storage;

  @override
  Future<void> saveToken(String token) {
    return storage.saveToken(token);
  }

  @override
  Future<String?> getToken() {
    return storage.getToken();
  }
}
