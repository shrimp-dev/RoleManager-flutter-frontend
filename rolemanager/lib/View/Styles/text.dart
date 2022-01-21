import 'package:flutter/cupertino.dart';
import 'package:teste/Utils/Extensions/stringExtension.dart';

class TextPosicioned {
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
