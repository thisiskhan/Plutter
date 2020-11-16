import 'package:flutter/material.dart';

class Accountsett extends StatefulWidget {
  @override
  _AccountsettState createState() => _AccountsettState();
}

class _AccountsettState extends State<Accountsett> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 1,
        backgroundColor: Colors.white,
        title: Text(
          'Account',
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              title: Text('Personal information'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Language'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Close Friends'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Mobile Data Use'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Original Posts'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Request Verification'),
              onTap: () {},
            ),
            ListTile(
              title: Text("Post You've reacted"),
              onTap: () {},
            ),
            ListTile(
              title: Text('Browser auto-fill'),
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}

//Theme Setting page
class Themepage extends StatefulWidget {
  @override
  _ThemepageState createState() => _ThemepageState();
}

class _ThemepageState extends State<Themepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  theme: darkThemeEnable?ThemeData.dark():ThemeData.light()
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 1,
        backgroundColor: Colors.white,
        title: Text(
          "Theme",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            //   fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text("Dark Theme"),
            trailing: Switch(value: false, onChanged: (changeTheme) {}),
          ),
          ListTile(
            title: Text("Light Theme"),
            trailing: Switch(value: false, onChanged: (changeTheme) {}),
          ),
        ],
      ),
    );
  }
}
