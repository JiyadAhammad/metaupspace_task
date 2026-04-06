import '../../../../core/storage/secure_storage_service.dart';
import '../models/response_model/auth_response/auth_response_model.dart';

abstract class IAuthLocalDatasource {
  Future<void> saveToken(AuthResponseModel token);
  Future<AuthResponseModel?> getToken();
  Future<void> clearToken();
}

class AuthLocalDatasourceImpl implements IAuthLocalDatasource {
  AuthLocalDatasourceImpl(this.storage);
  final SecureStorageService storage;

  @override
  Future<void> saveToken(AuthResponseModel token) {
    return storage.saveToken(token);
    
  }

  @override
  Future<AuthResponseModel?> getToken() {
    return storage.getToken();
  }

  @override
  Future<void> clearToken() {
    return storage.clearToken();
  }
}
