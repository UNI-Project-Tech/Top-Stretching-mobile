

class FormTextValidators {
  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return "enter_password";
    }
    if (value.length < 6) {
      return "password_required";
    }
    return null;
  }

  static String? validateLogin(String? value) {
    if (value == null || value.isEmpty) {
      return "enter_login";
    }
    if (value.length < 6) {
      return "login_required";
    }
    return null;
  }

  static String? validateName(String? value, {String? name}) {
    if (value == null || value.isEmpty) {
      return "$name nomi kirting";
    }
    if (value.length < 4) {
      return "$name nomi 4 ta belgidan kam bo'lmasligi kerak";
    }
    return null;
  }

  static String? validateCount(String? value) {
    if (value == null || value.isEmpty) {
      return "sonni kirting";
    }
    return null;
  }
}
