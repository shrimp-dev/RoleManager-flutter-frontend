import 'package:flutter/material.dart';
import 'package:rolemanager/Utils/Internacionalization/internacionalization.dart';
import 'package:rolemanager/Utils/globalVariables/photo_url.dart';

class InvateModal {
  static showDialogModal(
      BuildContext context,
      TextEditingController _controller,
      VoidCallback onPressedFirst,
      VoidCallback onPressedSecound,
      bool _validationInpult) {
    return SafeArea(
        child: ListView(
      children: [
        _invateTitleLabelModalText(),
        Padding(
          padding:
              const EdgeInsets.only(top: 40, left: 20, right: 20, bottom: 20),
          child: Image.network(PhotoUrl.invitePicure),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 4, left: 20, right: 20),
          child: _invateLabelModalText(),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
          child: _inpultTextFormFild(_controller, validate: _validationInpult),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 40, left: 10, right: 10),
          child: _RowButton(onPressedFirst, onPressedSecound),
        )
      ],
    ));
  }

  static Widget _RowButton(
      VoidCallback onPressedFirtButton, VoidCallback onPressedSecondButton) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _outPutButton(onPressedFirtButton),
        _ElevatedButton(onPressedSecondButton)
      ],
    );
  }

  static Widget _ElevatedButton(VoidCallback onPressed) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(Ln10.trans(LN10.ptbr, ENUM_INTER.buttoninvitesucess)),
    );
  }

  static Widget _outPutButton(VoidCallback onPressed) {
    return OutlinedButton(
      onPressed: onPressed,
      child: Text(Ln10.trans(LN10.ptbr, ENUM_INTER.buttoninvitecancel)),
    );
  }

  static Widget _invateTitleLabelModalText() {
    return Padding(
      padding: const EdgeInsets.only(top: 60, left: 40, right: 40),
      child: Text(
        Ln10.trans(LN10.ptbr, ENUM_INTER.lbmodalivite),
        style:
            const TextStyle(fontSize: 26, backgroundColor: Color(0x0007004d)),
      ),
    );
  }

  static Widget _inpultTextFormFild(TextEditingController _controller,
      {bool validate = false}) {
    return TextFormField(
      autocorrect: false,
      controller: _controller,
      decoration: InputDecoration(
          border: const OutlineInputBorder(),
          hintText: "",
          errorText: validate
              ? Ln10.trans(LN10.ptbr, ENUM_INTER.txterroinviteinput)
              : null),
    );
  }

  static Widget _invateLabelModalText() {
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 16, right: 10),
      child: Text(
        Ln10.trans(LN10.ptbr, ENUM_INTER.lbtextmodalinvite),
        style:
            const TextStyle(fontSize: 16, backgroundColor: Color(0x0007004d)),
      ),
    );
  }
}
