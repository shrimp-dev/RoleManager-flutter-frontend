import 'package:flutter/cupertino.dart';
import 'package:rolemanager/Utils/Extension/stringExtension.dart';

extension TextExtension on Text {
  static Text textColor(String text, String hexColor, double size) {
    return Text(
      text,
      style: TextStyle(
        color: hexColor.toColor(),
        fontSize: size,
      ),
    );
  }
}
