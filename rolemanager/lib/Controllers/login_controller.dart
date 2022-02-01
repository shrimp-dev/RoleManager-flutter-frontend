import 'package:flutter/material.dart';

class LoginController {
  static bool isNullValidator(
      TextEditingController _controller, bool _validator) {
    if (_controller.text.isEmpty) {
      return true;
    } else {
      return false;
    }
  }

  static bool isEmailValid(TextEditingController _controller, bool _validator) {
    final emailRegExp = RegExp(r"^[a-zA-Z0-9._]+@[a-zA-Z0-9]+.[a-zA-Z]+");
    bool isEmailValidVarieble = emailRegExp.hasMatch(_controller.text);

    if (isEmailValidVarieble != true || _controller.text.isEmpty) {
      return true;
    } else {
      return false;
    }
  }

  static bool regexVerifications(TextEditingController _controller) {
    bool hasUppercase = _controller.text.contains(RegExp(r'[A-Z]'));
    bool hasDigits = _controller.text.contains(RegExp(r'[0-9]'));
    bool hasLowercase = _controller.text.contains(RegExp(r'[a-z]'));
    bool hasSpecialCharacters =
        _controller.text.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'));

    return hasUppercase & hasDigits & hasLowercase & hasSpecialCharacters;
  }

  static bool isPassHasError(
      TextEditingController _controller, bool _validator) {
    if (_controller.text.length < 8) {
      return true;
    } else if (_controller.text.length > 21) {
      return true;
    } else if (_controller.text.contains('script')) {
      return true;
    } else if (regexVerifications(_controller) != true) {
      return true;
    } else {
      return false;
    }
  }
}
