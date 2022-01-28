import 'package:flutter/cupertino.dart';

class InvitationController {
  static bool isNullValidator(
      TextEditingController _controller, bool _validator) {
    if (_controller.text.isEmpty) {
      return true;
    } else {
      return false;
    }
  }

  static void dispose(BuildContext context) {
    Navigator.of(context).pop();
  }
}
