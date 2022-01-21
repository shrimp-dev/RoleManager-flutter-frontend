import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:teste/View/Styles/buttons.dart';
import 'package:teste/View/Styles/text.dart';

import '../../Utils/globalVariables/photo_url.dart';
import '../Styles/images.dart';
import '../Styles/inpults.dart';
import '../Styles/styles.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController loginController;
  final TextEditingController passController;
  final VoidCallback onPressed;

  LoginPage(this.loginController, this.passController, this.onPressed);

  // ignore: non_constant_identifier_names
  Widget ContainerForm(TextEditingController firtController,
      TextEditingController secundController) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          TextComplexed.colorAndFontText(
              "Entre com a sua conta", "#07004D", 22),
          Styles.Paddings(20, Inputs.inputTexFormFild(firtController, "Email")),
          Styles.Paddings(
              20, Inputs.inputTexFormFild(secundController, "Senha"))
        ],
      ),
    );
  }

  Widget buttonLogin(VoidCallback onPressed) {
    return Button().bntPost("Login", onPressed);
  }

  Widget listViewPage(TextEditingController _loginController,
      TextEditingController _passController) {
    return ListView(children: [
      ImagesContainer.classicImageNetwork(PhotoUrl.logoURL, 96, 96,
          marginTop: 40),
      ContainerForm(_loginController, _passController),
      buttonLogin(onPressed)
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return listViewPage(loginController, passController);
  }
}
