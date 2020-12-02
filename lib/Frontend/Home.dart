import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:plutter/Frontend/Eshop.dart';
import 'package:plutter/Frontend/Explore.dart';
import 'package:plutter/Widgets/progress.dart';
import 'Activity.dart';
import 'Camera.dart';
import 'Chat.dart';
import 'Notification.dart';
import 'Profile.dart';

class PlutterHomePage extends StatefulWidget {
  @override
  _PlutterHomePageState createState() => _PlutterHomePageState();
}

class _PlutterHomePageState extends State<PlutterHomePage> {
  int _page = 0;

  final files = [
    Home(),
    Explore(),
    Camera(),
    Notifications(),
    Activity(),
    Profile()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: files[_page],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _page,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Icon(
              Icons.home_outlined,
              color: Colors.black,
              size: 30.0,
            ),
            // ignore: deprecated_member_use
            title: Text(""),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.explore_outlined,
              color: Colors.black,
              size: 30.0,
            ),
            // ignore: deprecated_member_use
            title: Text(""),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.camera_alt_outlined,
              color: Colors.black,
              size: 30.0,
            ),
            // ignore: deprecated_member_use
            title: Text(""),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications_active_outlined,
              color: Colors.black,
              size: 30.0,
            ),
            // ignore: deprecated_member_use
            title: Text(""),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.assessment_outlined,
              color: Colors.black,
              size: 30.0,
            ),
            // ignore: deprecated_member_use
            title: Text(""),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle_outlined,
              color: Colors.black,
              size: 30.0,
            ),
            // ignore: deprecated_member_use
            title: Text(""),
          ),
        ],
        onTap: (context) {
          setState(() {
            _page = context;
          });
        },
      ),
    );
  }
}

//Homw screen hai
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Chat()));
        },
        child: Icon(Icons.message_outlined, size: 35, color: Colors.black),
        backgroundColor: Colors.white,
      ),
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => Eshop())),
            child: Icon(
              MdiIcons.shoppingOutline,
              size: 30,
              color: Colors.black,
            )),
        elevation: 0,
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            "Plutter",
            style: TextStyle(
              color: Colors.black,
              fontSize: 28,
              fontFamily: "OpenSans",
              letterSpacing: -0.5,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(MdiIcons.motionPlay, color: Colors.black, size: 35),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Flare()));
              }),
          SizedBox(
            width: 10,
          ),
          // IconButton(
          //     icon: Icon(Icons.payment_outlined, size: 35, color: Colors.black),
          //     onPressed: () {
          //       Navigator.push(context,
          //           MaterialPageRoute(builder: (context) => PlutterPayment()));
          //     }),
        ],
      ),
      body: SingleChildScrollView(
        child: linearProgress(),
      ),
    );
  }

  Widget _post() {
    return Scaffold(
      body: GridView.count(
          crossAxisCount: 1,
          children: List.generate(
              30,
              (index) => Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    elevation: 10.0,
                    child: Container(
                      child: Text("$index"),
                    ),
                  ))),
    );
  }
}

//This is Flare screen
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
