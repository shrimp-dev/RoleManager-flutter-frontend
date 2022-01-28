import 'package:flutter/material.dart';

class Inputs {
  static Widget inputTexFormFild(
      TextEditingController _controller, String placeholder,
      {double size = 12, bool isPass = false}) {
    return TextFormField(
      obscureText: isPass,
      decoration: InputDecoration(
        labelText: placeholder,
        border: const OutlineInputBorder(),
      ),
    );
  }

  static Widget inputClassico(
      String placeholder, TextEditingController _controller) {
    return TextField(
      controller: _controller,
      decoration: InputDecoration(
          border: const OutlineInputBorder(), hintText: placeholder),
    );
  }

  static Widget posicionedInput(
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
              border: const OutlineInputBorder(), hintText: placeholder),
        ));
  }
}
