import 'package:flutter/material.dart';
import 'package:rolemanager/Utils/Internacionalization/internacionalization.dart';
import 'package:rolemanager/Utils/globalVariables/photo_url.dart';
import 'package:rolemanager/View/Components/strokes.dart';

class InvateModal {
  static showDialogModal(
      BuildContext context,
      TextEditingController _controller,
      VoidCallback onPressedFirst,
      VoidCallback onPressedSecound) {
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
          child: _inpultTextFormFild(_controller),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
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

  static Widget _modalDialog(
      BuildContext context,
      TextEditingController _controller,
      VoidCallback onPressedFirst,
      onPressedSecondButton) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            _invateTitleLabelModalText(),
            const Padding(
              padding: EdgeInsets.only(left: 40, top: 4),
              child: MySeparator(
                color: Colors.black,
              ),
            ),
            _invateLabelModalText(),
            Padding(
              padding: const EdgeInsets.all(20),
              child: _inpultTextFormFild(_controller),
            ),
            _RowButton(onPressedFirst, onPressedSecondButton)
          ],
        ),
      ),
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

  static Widget _inpultTextFormFild(TextEditingController _controller) {
    return TextField(
      controller: _controller,
      decoration:
          const InputDecoration(border: OutlineInputBorder(), hintText: ""),
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
