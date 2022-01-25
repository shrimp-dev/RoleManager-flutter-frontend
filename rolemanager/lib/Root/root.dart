import 'package:flutter/material.dart';
import 'package:rolemanager/ViewController/login_page.dart';

class MainRoot extends StatefulWidget {
  const MainRoot({Key? key}) : super(key: key);

  @override
  _MainRootState createState() => _MainRootState();
}

class _MainRootState extends State<MainRoot> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Material(
        child: SafeArea(child: LoginViewController()),
      ),
    );
  }
}
