import 'package:flutter/cupertino.dart';

class ImagesContainer {
  static Widget classicImageNetwork(
    String urlImage,
    double? width,
    double? heigth, {
    double marginTop = 20,
    double marginDown = 20,
    double marginLeft = 20,
    double marginRight = 20,
  }) {
    return Container(
      margin: EdgeInsets.only(
          top: marginTop,
          bottom: marginDown,
          left: marginLeft,
          right: marginRight),
      child: Image.network(
        urlImage,
        width: width,
      ),
    );
  }
}
