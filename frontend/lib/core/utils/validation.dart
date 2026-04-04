class AppValidation {
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required';
    }

    // Limit email length to avoid overflow attacks/errors
    if (value.length > 50) {
      return 'Email is too long';
    }

    final RegExp emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!emailRegExp.hasMatch(value)) {
      return 'Please enter a valid email address';
    }

    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required';
    }

    // Minimum 6, Maximum 25 length constraint
    if (value.length < 6) {
      return 'Password must be at least 6 characters';
    }
    if (value.length > 25) {
      return 'Password cannot exceed 25 characters';
    }

    return null;
  }

  static String? validateFullname(String? value) {
    if (value == null || value.isEmpty) {
      return 'Fullname is required';
    }

    // Minimum 3, Maximum 25 length constraint
    if (value.length < 3) {
      return 'Fullname must be at least 3 characters';
    }
    if (value.length > 25) {
      return 'Fullname cannot exceed 25 characters';
    }

    return null;
  }
}
