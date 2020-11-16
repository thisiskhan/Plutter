import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'Camera.dart';
import 'CreateAlive.dart';
import 'CreateFame.dart';
import 'CreatePluts.dart';
import 'EditProfile.dart';
import 'Settings.dart';
import 'ViewPosts.dart';
import 'ViewProfile.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  // get mainAxisAlignment => null;
  TabController profilecontroller;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          leading: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ViewProfile()));
              },
              child: Icon(
                Icons.remove_red_eye_outlined,
                size: 30,
                color: Colors.blue,
              )),
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          title: Center(
            child: Text(
              "Username",
              style: TextStyle(
                color: Colors.black,
                //        fontFamily: "Satisfy",
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          actions: <Widget>[
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Setting()));
              },
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Icon(
                    Icons.settings,
                    size: 30,
                    color: Colors.black,
                  )),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Hero(
                      tag: "",
                      child: Container(
                        margin: EdgeInsets.only(top: 10),
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              spreadRadius: 5,
                              // blurRadius: 20,
                            )
                          ],
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/profile.png'),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Mohammed Raza Khan',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.location_on,
                      size: 10,
                    ),
                    Text(
                      'Location',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: Colors.indigo,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    buildStatColoumn("122", "Followers"),
                    buildStatColoumn("1,234", "Subscribers"),
                    buildStatColoumn("1,333", "Members"),
                    buildStatColoumn("11", "Following"),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    buildStatColoumn("112", "Posts"),
                  ],
                ),
                //    Divider(),
                SizedBox(
                  height: 10,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    RaisedButton(
                        elevation: 0,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => EditProfile()));
                        },
                        child: Text(
                          'Edit Profile',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(1.0),
                            side: BorderSide(color: Colors.grey))),
                    RaisedButton(
                        elevation: 0,
                        onPressed: () {
                          showModalBottomSheet(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(10.0)),
                              ),
                              context: context,
                              builder: ((builder) =>
                                  _createNewBottomSheet(context)));
                        },
                        child: Text(
                          'Create new',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(2.0),
                            side: BorderSide(color: Colors.grey))),
                    RaisedButton(
                        elevation: 0,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ViewPost()));
                        },
                        child: Text(
                          'View Posts ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(1.0),
                            side: BorderSide(color: Colors.grey))),
                  ],
                ),
                Divider(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget socailBio() {
    return Scaffold();
  }

  buildStatColoumn(String value, String title) {
    return Column(
      children: [
        Text(
          value,
          style: TextStyle(
            fontSize: 15,
            //      fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }

  Widget _createNewBottomSheet(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 6),
                child: Text('Create new',
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
              ),
            ),
          ),
          Divider(
            height: 1.0,
          ),
          ListTile(
              title: Text('Pluts',
                  style: TextStyle(
                      // fontFamily: "Satisfy",
                      fontSize: 20)),
              leading: Icon(
                MdiIcons.feather,
                size: 25,
                color: Colors.black,
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CreatePluts()));
              }),
        //  Divider(),
          ListTile(
              title: Text('Fame',
                  style: TextStyle(
                      //fontFamily: "Satisfy",
                      fontSize: 20)),
              leading: Icon(
                MdiIcons.motionOutline,
                size: 25,
                color: Colors.black,
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CreateFame()));
              }),
          //Divider(),
          ListTile(
              title: Text('Post',
                  style: TextStyle(
                      //     fontFamily: "Satisfy",
                      fontSize: 20)),
              leading: Icon(MdiIcons.grid, color: Colors.black, size: 25),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Camera()));
              }),
         // Divider(),
          ListTile(
              title: Text('Flare',
                  style: TextStyle(
                      //     fontFamily: "Satisfy",
                      fontSize: 20)),
              leading: Icon(MdiIcons.motionPlay, color: Colors.black, size: 25),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Camera()));
              }),
        //  Divider(),
          ListTile(
              title: Text('Alive',
                  style: TextStyle(
                      //fontFamily: "Satisfy",
                      fontSize: 20)),
              leading: Icon(
                MdiIcons.videoWireless,
                size: 25,
                color: Colors.black,
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Alive()));
              }),
          Divider(
            height: 10.0,
          )
        ],
      ),
    );
  }

  Future<void> _postDialog() {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('AlertDialog Title'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('This is a demo alert dialog.'),
                Text('Would you like to approve of this message?'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Approve'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
