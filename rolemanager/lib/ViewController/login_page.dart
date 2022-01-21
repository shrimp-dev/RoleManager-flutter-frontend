// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:teste/Utils/Extensions/textExtension.dart';
import 'package:teste/Utils/globalVariables/photo_url.dart';
import 'package:teste/View/Page/login_page.dart';
import 'package:teste/View/Styles/buttons.dart';
import 'package:teste/View/Styles/images.dart';
import 'package:teste/View/Styles/inpults.dart';
import 'package:teste/View/Styles/styles.dart';
import 'package:teste/View/Styles/text.dart';

class LoginViewController extends StatelessWidget {
  const LoginViewController({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeigth = MediaQuery.of(context).size.height;
    final _loginController = TextEditingController();
    final _passController = TextEditingController();

    return Container(
      child: LoginPage(_loginController, _passController, () {
        print(
            "Login: ${_loginController.text} e senha: ${_passController.text}");
      }),
    );
  }
}
