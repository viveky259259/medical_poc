import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';
import 'package:medical_poc/login/login.ui.dart';

class SplashUI extends StatefulWidget {
  @override
  _SplashUIState createState() => _SplashUIState();
}

class _SplashUIState extends State<SplashUI> {
  List<Slide> slides = new List();

  @override
  Widget build(BuildContext context) {
    return IntroSlider(
      slides: slides,
      colorSkipBtn: Colors.black,
      colorDoneBtn: Colors.black,
      onDonePress: gotoMainPage,
      onSkipPress: gotoMainPage,
    );
  }

  @override
  void initState() {
    super.initState();
    slides.add(
      new Slide(
        title: "",
        backgroundColor: Colors.white,
        centerWidget: Image.asset("assets/icon.png"),
        styleTitle: TextStyle(
            color: Color(0xff3da4ab),
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'RobotoMono'),
        styleDescription: TextStyle(
            color: Color(0xfffe9c8f),
            fontSize: 20.0,
            fontStyle: FontStyle.italic,
            fontFamily: 'Raleway'),
        //        pathImage: "assets/icon.png",
      ),
    );
    slides.add(
      new Slide(
        title: "",
        backgroundColor: Colors.white,
        centerWidget: Image.asset("assets/icon.png"),
        styleTitle: TextStyle(
            color: Color(0xff3da4ab),
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'RobotoMono'),
        styleDescription: TextStyle(
            color: Color(0xfffe9c8f),
            fontSize: 20.0,
            fontStyle: FontStyle.italic,
            fontFamily: 'Raleway'),
        //        pathImage: "assets/icon.png",
      ),
    );
    slides.add(
      new Slide(
        title: "",
        backgroundColor: Colors.white,
        centerWidget: Image.asset("assets/icon.png"),
        styleTitle: TextStyle(
            color: Color(0xff3da4ab),
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'RobotoMono'),
        styleDescription: TextStyle(
            color: Color(0xfffe9c8f),
            fontSize: 20.0,
            fontStyle: FontStyle.italic,
            fontFamily: 'Raleway'),
        //        pathImage: "assets/icon.png",
      ),
    );
    slides.add(
      new Slide(
        title: "",
        backgroundColor: Colors.white,
        centerWidget: Image.asset("assets/icon.png"),
        styleTitle: TextStyle(
            color: Color(0xff3da4ab),
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'RobotoMono'),
        styleDescription: TextStyle(
            color: Color(0xfffe9c8f),
            fontSize: 20.0,
            fontStyle: FontStyle.italic,
            fontFamily: 'Raleway'),
        //        pathImage: "assets/icon.png",
      ),
    );
    slides.add(
      new Slide(
        title: "",
        backgroundColor: Colors.white,
        centerWidget: Image.asset("assets/icon.png"),
        styleTitle: TextStyle(
            color: Color(0xff3da4ab),
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'RobotoMono'),
        styleDescription: TextStyle(
            color: Color(0xfffe9c8f),
            fontSize: 20.0,
            fontStyle: FontStyle.italic,
            fontFamily: 'Raleway'),
        //        pathImage: "assets/icon.png",
      ),
    );
    slides.add(
      new Slide(
        title: "",
        backgroundColor: Colors.white,
        centerWidget: Image.asset("assets/icon.png"),
        styleTitle: TextStyle(
            color: Color(0xff3da4ab),
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'RobotoMono'),
        styleDescription: TextStyle(
            color: Color(0xfffe9c8f),
            fontSize: 20.0,
            fontStyle: FontStyle.italic,
            fontFamily: 'Raleway'),
        //        pathImage: "assets/icon.png",
      ),
    );
    slides.add(
      new Slide(
        title: "",
        backgroundColor: Colors.white,
        centerWidget: Image.asset("assets/icon.png"),
        styleTitle: TextStyle(
            color: Color(0xff3da4ab),
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'RobotoMono'),
        styleDescription: TextStyle(
            color: Color(0xfffe9c8f),
            fontSize: 20.0,
            fontStyle: FontStyle.italic,
            fontFamily: 'Raleway'),
        //        pathImage: "assets/icon.png",
      ),
    );
  }

  gotoMainPage() async {
//    await Future.delayed(Duration(seconds: 1, milliseconds: 500));
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (c) => LoginUI()));
  }
}
