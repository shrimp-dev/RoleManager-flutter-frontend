import 'package:flutter/material.dart';
import 'package:rolemanager/Utils/Extension/textExtension.dart';

class Button {
  final bntPostStyle = ElevatedButton.styleFrom(
    padding: const EdgeInsets.all(20),
  );

  Widget bntPost(String conteudo, VoidCallback onCLick) {
    return ElevatedButton(
        style: bntPostStyle, onPressed: onCLick, child: Text(conteudo));
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
