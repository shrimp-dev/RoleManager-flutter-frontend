import 'package:flutter/cupertino.dart';
import 'package:teste/Utils/Extensions/stringExtension.dart';

class TextComplexed {
  static Widget colorAndFontText(String text, String hexColor, double size) {
    return Text(
      text,
      style: TextStyle(color: hexColor.toColor(), fontSize: size),
    );
  }

  static Positioned posicionedText(String text, double size, String hexColor,
      {double? top, double? bottom, double? left, double? rigth}) {
    return Positioned(
        left: left,
        right: rigth,
        top: top,
        child: Text(
          text,
          style: TextStyle(
            color: hexColor.toColor(),
            fontSize: size,
          ),
        ));
  }
}
