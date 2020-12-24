import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:plutter/Backend/auth.dart';
import 'package:plutter/Frontend/Home.dart';
import 'package:plutter/Frontend/Login.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AuthenticationService>(
          create: (_) => AuthenticationService(FirebaseAuth.instance),
        ),
        StreamProvider(
          create: (context) =>
              context.read<AuthenticationService>().authStateChanges,
        ),
      ],
      child: MaterialApp(
        home: SplashScreen(),
        debugShowCheckedModeBanner: false,
        routes: {'Login': (context) => Login()},
      ),
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
    // final firebaseuser = context.watch<User>();

    // if (firebaseuser != null) {
    //   return PlutterHomePage();
    // }
    // return Login();

    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          child: Center(child: Image.asset("assets/images/plutterSplash.jpeg")),
        ));
  }
}
