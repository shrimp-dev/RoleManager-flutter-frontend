import 'package:flutter/material.dart';
import 'package:teste/View/Styles/inpults.dart';
import 'package:teste/View/Styles/styles.dart';
import 'package:teste/View/Styles/text.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeigth = MediaQuery.of(context).size.height;
    final _loginController = TextEditingController();
    final _passController = TextEditingController();

    return Stack(
      children: [
        Positioned(
          child: Container(
              margin: const EdgeInsets.only(
                  top: 40, bottom: 150, left: 20, right: 20),
              width: screenWidth * 0.90,
              height: screenHeigth * 0.42,
              decoration: Styles.borderRadius(8),
              child: Stack(
                children: [
                  TextPosicioned.posicionedText(
                      "Entre com a sua conta", 22, "#07004D",
                      top: 40, left: 45, rigth: 20),
                  TextPosicioned.posicionedText("Email", 14, "#07004D",
                      top: 100, left: 20, rigth: 20),
                  Inpults.posicionedinputl("", _loginController, top: 120),
                  TextPosicioned.posicionedText("Senha", 14, "#07004D",
                      top: 200, left: 20, rigth: 20),
                  Inpults.posicionedinputl("", _passController, top: 220)
                ],
              )),
        ),
        Positioned(
          bottom: 20,
          left: screenWidth * 0.36,
          child: Container(
              child: InkWell(
            child: Image.network(
                "https://cdn.discordapp.com/attachments/580125063186087966/933885364391780382/Vector_4.png"),
          )),
        ),
      ],
    );
  }
}
