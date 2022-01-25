import 'package:flutter/material.dart';
import 'package:rolemanager/Utils/Extension/textExtension.dart';

class Button {
  final btnPostStyle = ElevatedButton.styleFrom(
    padding: const EdgeInsets.all(20),
  );

  Widget btnPost(String content, VoidCallback onCLick) {
    return ElevatedButton(
        style: btnPostStyle, onPressed: onCLick, child: Text(content));
  }

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
