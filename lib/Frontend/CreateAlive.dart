import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Alive extends StatefulWidget {
  @override
  _AliveState createState() => _AliveState();
}

class _AliveState extends State<Alive> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Text(
          "Alive",
          style: TextStyle(
            color: Colors.black,
            fontFamily: "OpenSans",
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}