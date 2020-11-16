import 'package:flutter/material.dart';

class Notifications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          // iconTheme: IconThemeData(color: Colors.black),
          leading: GestureDetector(
            child: Icon(
              Icons.notifications_active,
              color: Colors.black,
              size: 30,
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Notificationsett()));
            },
          ),
          title: Text('Notifications',
              style: TextStyle(
                color: Colors.black,
                //      fontFamily: "Satisfy",
                fontSize: 20,
                fontWeight: FontWeight.bold,
              )),
          backgroundColor: Colors.white,
          bottom: TabBar(isScrollable: true, tabs: [
            Tab(
              child: Text(
                'Reactions',
                style: TextStyle(color: Colors.black),
              ),
            ),
            Tab(
              child: Text(
                'Recommended',
                style: TextStyle(color: Colors.black),
              ),
            ),
            Tab(
              child: Text(
                'Request',
                style: TextStyle(color: Colors.black),
              ),
            ),
            Tab(
              child: Text(
                'Tags',
                style: TextStyle(color: Colors.black),
              ),
            ),
            Tab(
              child: Text(
                'Payments',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ]),
        ),
        body: TabBarView(children: [
          Container(
            child: Center(child: Text('Reactions')),
          ),
          Container(
            child: Center(child: Text('Recommended')),
          ),
          Container(child: request()),
          Container(
            child: Center(child: Text('Tags')),
          ),
          Container(
            child: Center(child: Text('Payments')),
          ),
        ]),
      ),
    );
  }
}

Widget request() {
  return Scaffold(
    body: SingleChildScrollView(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          leading: Icon(Icons.group, size: 30),
          title: Text('follow request',
              style: TextStyle(
                color: Colors.grey,
              )),
          onTap: () {},
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.message, size: 30),
          title: Text('message request',
              style: TextStyle(
                color: Colors.grey,
              )),
          onTap: () {},
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.call, size: 30),
          title: Text('call request',
              style: TextStyle(
                color: Colors.grey,
              )),
          onTap: () {},
        ),
      ],
    )),
  );
}

class Notificationsett extends StatefulWidget {
  @override
  _NotificationsettState createState() => _NotificationsettState();
}

class _NotificationsettState extends State<Notificationsett> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 1,
        title: Text(
          'Notifications',
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ListTile(
                title: Text('Push Notification',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    )),
              ),
              ListTile(
                title: Text('Pause all Notification'),
                trailing:
                    Switch(value: false, onChanged: (paueNotification) {}),
              ),
              ListTile(
                title: Text('Posts Stories and Comments'),
                onTap: () {},
              ),
              ListTile(
                title: Text('Following and Followers'),
                onTap: () {},
              ),
              ListTile(
                title: Text('Direct Messages'),
                onTap: () {},
              ),
              ListTile(
                title: Text('Direct Call'),
                onTap: () {},
              ),
              ListTile(
                title: Text('Group Notifications'),
                onTap: () {},
              ),
              ListTile(
                title: Text('Live Stratming and Live Chat'),
                onTap: () {},
              ),
              ListTile(
                title: Text('From Plutter'),
                onTap: () {},
              ),
            ]),
      ),
    );
  }
}