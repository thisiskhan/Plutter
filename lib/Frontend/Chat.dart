import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:plutter/Frontend/ChatRoom.dart';

import 'Camera.dart';
import 'Login.dart';

class Chat extends StatefulWidget {
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  TabController chatcontroller;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            elevation: 1,
            iconTheme: IconThemeData(color: Colors.black),
            backgroundColor: Colors.white,
            title: Center(
              child: Text(
                "PlutterChat",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontFamily: "OpenSans",
                  letterSpacing: -0.1,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            actions: <Widget>[
              // IconButton(
              //   padding: EdgeInsets.only(right: 30),
              //   icon: Icon(
              //     Icons.group_add,
              //     size: 35,
              //     color: Colors.black,
              //   ),
              //   onPressed: () {},
              // ),
              IconButton(
                  padding: EdgeInsets.only(right: 20),
                  icon: Icon(Icons.video_call, size: 35, color: Colors.black),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Camera()));
                  })
            ],
            bottom: TabBar(
              tabs: [
                Tab(
                  child: Text(
                    "Personal Chat",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                Tab(
                  child: Text(
                    "Community Chat",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
          // floatingActionButton: FloatingActionButton(
          //   backgroundColor: Colors.white,
          //   onPressed: () {},
          //   child: Icon(
          //     Icons.add_ic_call_outlined,
          //     color: Colors.black,
          //     size: 30,
          //   ),
          // ),
          body: TabBarView(
            controller: chatcontroller,
            children: [
              Container(
                child: personalChat(),
              ),
              Container(
                child: communityChat(),
              ),
            ],
          )),
    );
  }

  Widget personalChat() {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {},
        child: Icon(
          Icons.add_ic_call_outlined,
          color: Colors.black,
          size: 30,
        ),
      ),
      body: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage("assets/images/profile.png"),
        ),
        title: Text("Mohammed Raza khan"),
        subtitle: Text("Username"),
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => ChatRoom()));
        },
      ),
    );
  }

  Widget communityChat() {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {},
        child: Icon(
          MdiIcons.accountMultiplePlusOutline,
          color: Colors.black,
          size: 30,
        ),
      ),
      body: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage("assets/images/profile.png"),
        ),
        title: Text("Flutter Community"),
        subtitle: Text("Username"),
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => ChatRoom()));
        },
      ),
    );
  }
}