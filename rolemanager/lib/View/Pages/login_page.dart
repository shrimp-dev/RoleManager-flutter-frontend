import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:rolemanager/Utils/Internacionalization/internacionalization.dart';
import 'package:rolemanager/View/Components/buttons.dart';

class LoginPage {
  static Widget listViewPage(
      TextEditingController controller,
      TextEditingController secretController,
      VoidCallback onTapLogin,
      VoidCallback onTapInvite) {
    Button btn = Button();
    return ListView(
      children: [
        _logo(),
        _loginText(),
        _inpultTextFild(controller),
        _inpultTextFildSecret(secretController),
        Padding(
          padding: const EdgeInsets.all(26),
          child: btn.btnPost("Logar", onTapLogin),
        ),
        _invitationTextLogin(),
        _btnInvite(onTapInvite)
      ],
    );
  }

  static Widget _logo() {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Image.network(
        'https://cdn.discordapp.com/attachments/933366459827097611/935690236577595433/97647654.png',
        width: 96,
        height: 96,
      ),
    );
  }

  static Widget _loginText() {
    Ln10 ln = Ln10();
    return Padding(
      padding: const EdgeInsets.only(top: 40, left: 60, right: 40),
      child: Text(
        ln.trans(LN10.ptbr, ENUM_INTER.lbapresentationLogin),
        style:
            const TextStyle(fontSize: 24, backgroundColor: Color(0x0007004d)),
      ),
    );
  }

  static Widget _inpultTextFild(TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: TextFormField(
        decoration: const InputDecoration(
          labelText: "Email",
          border: OutlineInputBorder(),
        ),
        controller: controller,
      ),
    );
  }

  static Widget _inpultTextFildSecret(TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: TextFormField(
        obscureText: true,
        decoration: const InputDecoration(
          labelText: "Senha",
          border: OutlineInputBorder(),
        ),
        controller: controller,
      ),
    );
  }

  static Widget _invitationTextLogin() {
    Ln10 ln = Ln10();
    return Padding(
      padding: const EdgeInsets.only(top: 40, left: 60, right: 40),
      child: Text(
        ln.trans(LN10.ptbr, ENUM_INTER.lbinvitationLogin),
        style:
            const TextStyle(fontSize: 12, backgroundColor: Color(0x0007004d)),
      ),
    );
  }

  static Widget _btnInvite(VoidCallback onTap) {
    Ln10 ln = Ln10();

    return InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.only(top: 10, left: 150, right: 80),
          child: Text(
            ln.trans(LN10.ptbr, ENUM_INTER.buttonLogin),
            style: const TextStyle(
                fontSize: 12, backgroundColor: Color(0x0007004d)),
          ),
        ));
  }
}
