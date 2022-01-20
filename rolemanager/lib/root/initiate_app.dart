import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class MyRoot extends StatelessWidget {
  const MyRoot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [Locale('pt', 'BR')],
    );
  }
}
