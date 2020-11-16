import 'package:flutter/material.dart';
import 'package:plutter/Frontend/Login.dart';

import 'CreateCommunitypage.dart';

class ChannelPage extends StatefulWidget {
  @override
  _ChannelPageState createState() => _ChannelPageState();
}

class _ChannelPageState extends State<ChannelPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: Center(
          child: Text(
            "Channel Page",
            style: TextStyle(color: Colors.black, fontFamily: "OpenSans"),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: GestureDetector(
              onTap: () => Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => CommunityPage())),
              child: Text(
                "Skip",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
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
            Center(
              child: Text(
                'Username',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  """
   Do you wish to create a Plutter Channel
   with the same username 
              """,
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                RaisedButton(
                    //   fillColor: Colors.blue[800],
                    onPressed: () {
                      // signMeUp();
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CommunityPage()));
                    },
                    color: Colors.blue[800],
                    //   padding: EdgeInsets.fromLTRB(70, 10, 70, 10),
                    child: Text(
                      'Create & Continue',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ))
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                RaisedButton(
                    //   fillColor: Colors.blue[800],
                    onPressed: () {
                      //   signMeUp();
                      // Navigator.pushReplacement(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => ChannelPage()));
                    },
                    color: Colors.blue[800],
                    //   padding: EdgeInsets.fromLTRB(70, 10, 70, 10),
                    child: Text(
                      'Learn more..',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}