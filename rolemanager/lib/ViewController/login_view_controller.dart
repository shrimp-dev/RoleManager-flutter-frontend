import 'package:flutter/material.dart';
import 'package:rolemanager/View/Pages/login_page.dart';

class LoginViewController extends StatefulWidget {
  const LoginViewController({Key? key}) : super(key: key);

  @override
  _LoginViewControllerState createState() => _LoginViewControllerState();
}

class _LoginViewControllerState extends State<LoginViewController> {
  @override
  Widget build(BuildContext context) {
    return LoginPage.containerPage();
  }
}
