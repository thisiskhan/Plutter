import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'Camera.dart';
import 'Login.dart';

class Flare extends StatefulWidget {
  @override
  _FlareState createState() => _FlareState();
}

class _FlareState extends State<Flare> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(
            "Flare",
            style: TextStyle(
                fontFamily: "OpenSans", letterSpacing: -0.1, fontSize: 25),
          ),
          actions: [
            IconButton(
                icon: Icon(
                  MdiIcons.motionPlay,
                  color: Colors.white,
                  size: 25,
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Camera()));
                })
          ],
        ),
        body: SingleChildScrollView(
            //  scrollDirection: ScrollDirect,
            ));
  }
}
