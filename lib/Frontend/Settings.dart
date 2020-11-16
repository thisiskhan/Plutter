import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:plutter/Frontend/Privacy.dart';

import 'About..dart';
import 'Accountsett.dart';
import 'Activitysett.dart';
import 'Notification.dart';
import 'SwitchAccount.dart';
import 'Login.dart';

class Setting extends StatefulWidget {
  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  //  AuthMethod authMethods = new AuthMethod();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1.0,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Text(
          'Settings',
          style: TextStyle(
              color: Colors.black,
              // fontFamily: "Satisfy",
              fontSize: 20),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ListTile(
                title: Text('Account'),
                leading: Icon(Icons.account_circle),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Accountsett()));
                }),
            ListTile(
              title: Text('Privacy & Security'),
              leading: Icon(Icons.lock),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Privacy()));
              },
            ),
            ListTile(
              title: Text('Notifications'),
              leading: Icon(Icons.notifications),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Notificationsett()));
              },
            ),
            ListTile(
              title: Text('Activity'),
              leading: Icon(Icons.assessment),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Activitysett()));
              },
            ),
            ListTile(
              title: Text('About'),
              leading: Icon(Icons.info),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => About()));
              },
            ),
            ListTile(
              leading: Icon(Icons.payment),
              title: Text('Biling and payments'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Live Stream'),
              leading: Icon(MdiIcons.videoWireless),
              onTap: () {
                //  Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
              },
            ),
            ListTile(
              title: Text('Theme'),
              leading: Icon(Icons.format_paint),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Themepage()));
              },
            ),
            ListTile(
              title: Text('Saved'),
              leading: Icon(Icons.bookmark),
              onTap: () {},
            ),
            ListTile(
              title: Text('Downloaded'),
              leading: Icon(Icons.file_download),
              onTap: () {},
            ),
            ListTile(
              title: Text('General settings'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Switch Account'),
              //   leading: Icon(),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SwitchAccount()));
              },
            ),
            ListTile(
              title: Text('Logout'),
              onTap: () {
                //        authMethods.signOut();
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Login()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
