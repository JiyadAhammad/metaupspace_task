class AuthEntity {
  const AuthEntity({
    required this.userId,
    required this.email,
    required this.fullName,
    required this.device,
    required this.accessToken,
    required this.refreshToken,
    required this.createdAt,
    required this.updatedAt,
  });
  final String userId;
  final String email;
  final String fullName;
  final String device;
  final String accessToken;
  final String refreshToken;
  final DateTime createdAt;
  final DateTime updatedAt;
}

class AuthResult {
  AuthResult({required this.user, required this.message});
  final AuthEntity user;
  final String message;
}
