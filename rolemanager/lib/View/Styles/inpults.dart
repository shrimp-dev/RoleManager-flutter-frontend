import 'package:flutter/material.dart';

class Inpults {
  static Widget inpultClassico(
      //TODO: Ajeitar o inpult
      String placeholder,
      TextEditingController _controller) {
    return TextField(
      controller: _controller,
      decoration:
          InputDecoration(border: OutlineInputBorder(), hintText: placeholder),
    );
  }

  static Widget posicionedinputl(
      String placeholder, TextEditingController _controller,
      {double? top, double? bottom, bool? isTextPass, dynamic validator}) {
    return Positioned(
        top: top,
        left: 20,
        right: 20,
        bottom: bottom,
        child: TextFormField(
          validator: validator,
          obscureText: isTextPass ?? false,
          controller: _controller,
          decoration: InputDecoration(
              border: OutlineInputBorder(), hintText: placeholder),
        ));
  }
}
