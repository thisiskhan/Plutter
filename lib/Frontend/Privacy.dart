
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Privacy extends StatefulWidget {
  @override
  _PrivacyState createState() => _PrivacyState();
}

class _PrivacyState extends State<Privacy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 1,
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          title: Text(
            'Privacy & Security',
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
        ),
        body: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              title: Text('Privacy',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  )),
            ),
            ListTile(
              leading: Icon(Icons.lock),
              title: Text('Private account'),
              trailing: Switch(value: false, onChanged: (paueNotification) {}),
            ),
            ListTile(
              title: Text('Profile'),
              leading: Icon(Icons.account_circle),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProfileSett()));
              },
            ),
            ListTile(
              title: Text('Mange your location settings'),
              leading: Icon(Icons.location_on),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              title: Text('Accout security',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  )),
            ),
            ListTile(
              leading: Icon(MdiIcons.accountEdit),
              title: Text('Update your personal information'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(MdiIcons.accountKey),
              title: Text('Change password'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.vibration),
              title: Text('Receive alert about unrecognize login'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(MdiIcons.cellphoneKey),
              title: Text('Use two-factor authentication'),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              title: Text('Your Plutter information',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  )),
            ),
            ListTile(
              leading: Icon(MdiIcons.accountCircle),
              title: Text('Access your information'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(MdiIcons.accountCog),
              title: Text('Manage your information'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(MdiIcons.accountConvert),
              title: Text('Clear your Plutter activity'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(MdiIcons.accountRemove),
              title: Text('Delete your Plutter account'),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              title: Text('E-commerce and advertisement',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  )),
            ),
            ListTile(
              leading: Icon(MdiIcons.library),
              title: Text('Learn about E-commerce page and ads'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(MdiIcons.cart),
              title: Text('Setup an E-commerce page'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(MdiIcons.cellphoneText),
              title: Text('Rewiew you ad preference'),
              onTap: () {},
            ),
          ],
        )));
  }
}

//Profile Settings
class ProfileSett extends StatefulWidget {
  @override
  _ProfileSettState createState() => _ProfileSettState();
}

class _ProfileSettState extends State<ProfileSett> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Profile Settings",
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              title: Text("Profile image zoom"),
              trailing: Switch(value: false, onChanged: (paueNotification) {}),
            ),
            ListTile(
              title: Text("Social Profile"),
              onTap: () {},
            ),
            ListTile(
              title: Text("Channel Profile"),
              onTap: () {},
            ),
            ListTile(
              title: Text("Community Profile"),
              onTap: () {},
            ),
            ListTile(
              title: Text("Profile Setup"),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
