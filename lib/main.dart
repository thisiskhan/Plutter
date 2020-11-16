import 'dart:async';
import 'package:flutter/material.dart';
import 'package:plutter/Frontend/Login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
      routes: {'Login': (context) => Login()},
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void startTimer() {
    Timer(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacementNamed('Login');
    });
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    //  MediaQueryData deviceInfo = MediaQuery.of(context).size*;
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          child: Center(child: Image.asset("assets/images/plutterSplash.jpeg")),
        ));
  }
}
