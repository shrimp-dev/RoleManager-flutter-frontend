import 'package:flutter/material.dart';
import 'package:teste/View/Styles/styles.dart';

import '../ViewController/login_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: "Rolê Manager"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    List<Color> colors = [Color(0x5D5FEF), Colors.white];

    return Scaffold(
      body: SafeArea(
        child: Container(
          child: const LoginViewController(),
        ),
      ),
    );
  }
}
