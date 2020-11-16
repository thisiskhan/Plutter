import 'package:flutter/material.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 1,
        title: Text(
          'About',
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 5,
          ),
          ListTile(
            title: Text('App updates'),
            onTap: () {},
          ),
          ListTile(
            title: Text('Data Policy & Community Guidelines'),
            onTap: () {},
          ),
          ListTile(
            title: Text('Plutetr Terms of Service'),
            onTap: () {},
          ),
          ListTile(
            title: Text('Help'),
            onTap: () {},
          ),
          ListTile(
            title: Text('App version'),
            onTap: () {},
          ),
          ListTile(
            title: Text('Send feedback'),
            onTap: () {},
          )
        ],
      ),
    );
  }
}
