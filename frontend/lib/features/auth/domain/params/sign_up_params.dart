class SignUpParams {
  SignUpParams({
    required this.fullName,
    required this.email,
    required this.password,
    required this.department,
    required this.role,
    required this.manager,
    required this.joiningDate,
    required this.device,
  });

  final String fullName;
  final String email;
  final String password;
  final String department;
  final String role;
  final String manager;
  final DateTime joiningDate;
  final String device;
}
