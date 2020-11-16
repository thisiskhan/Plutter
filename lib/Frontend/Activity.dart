import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Activity extends StatefulWidget {
  @override
  _ActivityState createState() => _ActivityState();
}

class _ActivityState extends State<Activity> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: Icon(Icons.assessment, color: Colors.black, size: 30),
          title: Text('Activity',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                //   fontFamily: "Satisfy",
                fontWeight: FontWeight.bold,
              )),
          backgroundColor: Colors.white,
          bottom: TabBar(isScrollable: true, tabs: [
            Tab(
              child: Text(
                'Followers',
                style: TextStyle(color: Colors.black),
              ),
            ),
            Tab(
              child: Text(
                'Following',
                style: TextStyle(color: Colors.black),
              ),
            ),
            Tab(
              child: Text(
                'Close Friends',
                style: TextStyle(color: Colors.black),
              ),
            ),
            Tab(
              child: Text(
                'Community Joined',
                style: TextStyle(color: Colors.black),
              ),
            ),
            Tab(
              child: Text(
                'Growth',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ]),
        ),
        body: TabBarView(children: [
          Container(
            child: Center(child: Text('Followers')),
          ),
          Container(
            child: Center(child: Text('Following')),
          ),
          Container(
            child: Center(child: Text('Close Friends')),
          ),
          Container(
            child: Center(child: Text('Community Joined')),
          ),
          Container(
            child: Center(child: Text('Growth')),
          ),
        ]),
      ),
    );
  }
}