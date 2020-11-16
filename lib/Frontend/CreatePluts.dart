import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class CreatePluts extends StatefulWidget {
  @override
  _CreatePlutsState createState() => _CreatePlutsState();
}

class _CreatePlutsState extends State<CreatePluts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {},
        child: Icon(MdiIcons.feather, color: Colors.black, size: 30),
      ),
      appBar: AppBar(
        elevation: 1,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Text(
          "Pluts",
          style: TextStyle(
            color: Colors.black,
            fontFamily: "OpenSans",
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.add_photo_alternate_outlined,
              color: Colors.black,
              size: 25,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}