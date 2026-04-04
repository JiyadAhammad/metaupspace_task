class AuthEntity {
  const AuthEntity({
    required this.userId,
    required this.isActiveUser,
    required this.email,
    required this.fullName,
    required this.department,
    required this.role,
    required this.manager,
    required this.joiningDate,
    required this.device,
    required this.accessToken,
    required this.refreshToken,
    required this.createdAt,
    required this.updatedAt,
  });

  final String userId;
  final bool isActiveUser;
  final String email;
  final String fullName;
  final String department;
  final String role;
  final String manager;
  final DateTime joiningDate;
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
