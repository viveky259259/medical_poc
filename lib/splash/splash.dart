import 'dart:async';

import 'package:flutter/material.dart';
import 'package:medical_poc/login/login.ui.dart';

class SplashUI extends StatefulWidget {
  @override
  _SplashUIState createState() => _SplashUIState();
}

class _SplashUIState extends State<SplashUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset("assets/icon.png"),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    gotoMainPage();
  }

  gotoMainPage() async {
    await Future.delayed(Duration(seconds: 1, milliseconds: 500));
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (c)=>LoginUI()));
  }
}
