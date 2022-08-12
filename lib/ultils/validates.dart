class Validates {
  /// at Minimum 6 characters, Minimum 1 upper case, Minimum 1 lowercase, 1 numberric and spects character
  static bool validatePassword(String password) {
    if (RegExp(
      r"^(?=.*?[A-Z]){1,}(?=(.*[a-z]){1,})(?=(.*[\d]){1,})(?=(.*[\W_]){1,})(?!.*\s).{6,16}$",
    ).hasMatch(password)) {
      return true;
    }
    return false;
  }
}
