import 'package:flutter/material.dart';
import 'package:rolemanager/View/Pages/login_page.dart';

class LoginViewController extends StatefulWidget {
  const LoginViewController({Key? key}) : super(key: key);

  @override
  _LoginViewControllerState createState() => _LoginViewControllerState();
}

class _LoginViewControllerState extends State<LoginViewController> {
  late TextEditingController _controller;
  late TextEditingController _secretController;
  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
    _secretController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return LoginPage.listViewPage(_controller, _secretController, () {
      print("Login: ${_controller.text} / Senha: ${_secretController.text}");
    }, () {
      print("Chamar nova tela");
    });
  }
}
