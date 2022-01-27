import 'package:flutter/material.dart';
import 'package:rolemanager/Utils/Internacionalization/internacionalization.dart';
import 'package:rolemanager/View/Components/strokes.dart';

class InvateModal {
  static showDialogModal(
      BuildContext context,
      TextEditingController _controller,
      VoidCallback onPressedFirst,
      VoidCallback onPressedSecound) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return _modalDialog(
              context, _controller, onPressedFirst, onPressedSecound);
        });
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
      child: const Text("teste"),
    );
  }

  static Widget _outPutButton(VoidCallback onPressed) {
    return OutlinedButton(
      onPressed: onPressed,
      child: const Text("teste"),
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
        width: 300,
        height: 300,
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
      padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
      child: Text(
        Ln10.trans(LN10.ptbr, ENUM_INTER.lbmodalivite),
        style:
            const TextStyle(fontSize: 18, backgroundColor: Color(0x0007004d)),
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
