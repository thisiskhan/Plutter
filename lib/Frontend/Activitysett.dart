import 'package:flutter/material.dart';

class Activitysett extends StatefulWidget {
  @override
  _ActivitysettState createState() => _ActivitysettState();
}

class _ActivitysettState extends State<Activitysett> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Text(
          "Activity",
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
            // fontFamily: "OpenSans",
          ),
        ),
      ),
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Text("Manage your activity"),
            onTap: () {},
          ),
          ListTile(title: Text(""), onTap: () {})
        ],
      )),
    );
  }
}