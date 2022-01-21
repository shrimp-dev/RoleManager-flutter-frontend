import 'dart:ffi';

import 'package:flutter/material.dart';

import '../../Utils/Extensions/textExtension.dart';

class Button {
  static Widget bntComTexto(String text, VoidCallback onTap,
      {String? color, double? size}) {
    return InkWell(
        child: TextExtension.textColor(text, color ?? "FFFFFF", size ?? 16),
        onTap: onTap);
  }

  static Widget bntComFotoUrl(String url, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      child: Image.network(url),
    );
  }
}
