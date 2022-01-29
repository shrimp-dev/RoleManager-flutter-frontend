import 'package:flutter/material.dart';
import 'package:rolemanager/Controllers/login_controller.dart';
import 'package:rolemanager/View/Pages/login_page.dart';
import 'package:rolemanager/ViewController/invitation_view_controller.dart';

class LoginViewController extends StatefulWidget {
  const LoginViewController({Key? key}) : super(key: key);

  @override
  _LoginViewControllerState createState() => _LoginViewControllerState();
}

class _LoginViewControllerState extends State<LoginViewController> {
  late TextEditingController _controller;
  late TextEditingController _secretController;
  bool _isVisibility = true;
  bool _validator = false;
  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
    _secretController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return LoginPage.listViewPage(_controller, _secretController, () {
      setState(() {
        _validator = LoginController.isEmailValid(_controller, _validator);
        _validator =
            LoginController.isPasswordValid(_secretController, _validator);
      });
    }, () {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => const InvitationViewController()));
    }, () {
      setState(() {
        _isVisibility = !_isVisibility;
      });
    }, _isVisibility, _validator);
  }
}
