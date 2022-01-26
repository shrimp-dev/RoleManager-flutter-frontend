import 'dart:math';

import 'package:flutter/material.dart';
import 'package:rolemanager/Utils/Internacionalization/internacionalization.dart';
import 'package:rolemanager/Utils/globalVariables/photo_url.dart';
import 'package:rolemanager/View/Components/buttons.dart';

class LoginPage {
  static Widget listViewPage(
      TextEditingController controller,
      TextEditingController secretController,
      VoidCallback onTapLogin,
      VoidCallback onTapInvite,
      VoidCallback onTapVisibility,
      bool isVisible) {
    Button btn = Button();
    return ListView(
      children: [
        _logo(),
        _loginText(),
        _inpultTextFild(controller),
        _inpultTextFildSecret(secretController, onTapVisibility,
            isVisible: isVisible),
        Padding(
          padding: const EdgeInsets.all(26),
          child: btn.btnPost(
              Ln10.trans(LN10.ptbr, ENUM_INTER.lbbuttonlogin), onTapLogin),
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
        PhotoUrl.logoURL,
        width: 96,
        height: 96,
      ),
    );
  }

  static Widget _loginText() {
    return Padding(
      padding: const EdgeInsets.only(top: 40, left: 60, right: 40),
      child: Text(
        Ln10.trans(LN10.ptbr, ENUM_INTER.lbapresentationlogin),
        style:
            const TextStyle(fontSize: 24, backgroundColor: Color(0x0007004d)),
      ),
    );
  }

  static Widget _inpultTextFild(TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: Ln10.trans(LN10.ptbr, ENUM_INTER.lbapresentationlogin),
          border: const OutlineInputBorder(),
        ),
        controller: controller,
      ),
    );
  }

  static Widget _inpultTextFildSecret(
      TextEditingController controller, VoidCallback onPressed,
      {bool isVisible = true}) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: TextFormField(
        autocorrect: false,
        obscureText: isVisible,
        decoration: InputDecoration(
          suffixIcon: IconButton(
            iconSize: 20,
            icon: isVisible
                ? const Icon(Icons.visibility_off)
                : const Icon(Icons.visibility),
            onPressed: onPressed,
          ),
          labelText: Ln10.trans(LN10.ptbr, ENUM_INTER.lbpassinpult),
          border: const OutlineInputBorder(),
        ),
        controller: controller,
      ),
    );
  }

  static Widget _invitationTextLogin() {
    return Padding(
      padding: const EdgeInsets.only(top: 40, left: 60, right: 40),
      child: Text(
        Ln10.trans(LN10.ptbr, ENUM_INTER.lbinvitationlogin),
        style:
            const TextStyle(fontSize: 12, backgroundColor: Color(0x0007004d)),
      ),
    );
  }

  static Widget _btnInvite(VoidCallback onTap) {
    return InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.only(top: 10, left: 150, right: 80),
          child: Text(
            Ln10.trans(LN10.ptbr, ENUM_INTER.buttonloginInvitation),
            style: const TextStyle(
                fontSize: 12, backgroundColor: Color(0x0007004d)),
          ),
        ));
  }
}
