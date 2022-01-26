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
  bool _isVisibility = true;
  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
    _secretController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return LoginPage.listViewPage(_controller, _secretController, () {}, () {},
        () {
      setState(() {
        _isVisibility = !_isVisibility;
      });
    }, _isVisibility);
  }
}
