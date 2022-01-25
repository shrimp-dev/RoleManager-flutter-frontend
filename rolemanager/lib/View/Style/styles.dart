import 'package:flutter/material.dart';

class Styles {
  // ignore: non_constant_identifier_names
  static Widget Paddings(double nPadding, Widget child) {
    return Padding(padding: EdgeInsets.all(nPadding), child: child);
  }

  static BoxDecoration borderRadius(double numeroRaius) {
    return BoxDecoration(
        shape: BoxShape.rectangle,
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3))
        ],
        borderRadius: BorderRadius.circular(numeroRaius));
  }

  // ignore: non_constant_identifier_names
  static LinearGradient EzyGradient(List<Color> listColors,
      {TileMode? tileMode, Alignment? begin, Alignment? end}) {
    // ignore: todo
    //TODO: Study rest of gradients for doing better this...

    return LinearGradient(
        colors: listColors,
        tileMode: tileMode ?? TileMode.clamp,
        begin: begin ?? Alignment.topCenter,
        end: end ?? Alignment.bottomCenter);
  }
}
