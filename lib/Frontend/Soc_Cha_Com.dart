import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:plutter/Frontend/ChatRoom.dart';
import 'package:plutter/Frontend/Eshop.dart';
import 'ViewPost.dart';


class SocailChannelCommunityProfile extends StatefulWidget {
  @override
  _SocailChannelCommunityProfileState createState() => _SocailChannelCommunityProfileState();
}

class _SocailChannelCommunityProfileState extends State<SocailChannelCommunityProfile>
    with SingleTickerProviderStateMixin {
  TabController controller;
  void initState() {
    // ignore: todo
    // TODO: implement initState
    controller = new TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            iconTheme: IconThemeData(color: Colors.black),
            backgroundColor: Colors.white,
            elevation: 0,
            title: Center(
              child: Text("Username",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )),
            ),
            actions: <Widget>[
         
              GestureDetector(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.only(
                      right: 15,
                    ),
                    child:
                        Icon(Icons.notifications_outlined, color: Colors.black),
                  )),
              GestureDetector(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.only(
                      right: 15,
                    ),
                    child: Icon(Icons.info_outline, color: Colors.black),
                  )),
            ],
            bottom: TabBar(controller: controller, isScrollable: true, tabs: [
              Tab(
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Text('Social', style: TextStyle(color: Colors.black)),
                ),
              ),
              Tab(
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Text('Channel', style: TextStyle(color: Colors.black)),
                ),
              ),
              Tab(
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child:
                      Text('Community', style: TextStyle(color: Colors.black)),
                ),
              ),
            ])),
        body: TabBarView(
          controller: controller,
          children: [
            Container(
              child: socialPage(),
            ),
            Container(
              child: channelPage(),
            ),
            Container(
              child: communitPage(),
            ),
          ],
        ),
      ),
    );
  }

  Widget socialPage() {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.only(top: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Hero(
                    tag: "",
                    child: Center(
                      child: Container(
                        //    margin: EdgeInsets.fromLTRB(10, 0, 0 ,0),

                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(70),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              spreadRadius: 5,
                              //   blurRadius: 20,
                            )
                          ],
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/profile.png'),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Raza Khan',
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
            //   Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildStatColoumn("122", "Social liked"),
                buildStatColoumn("1,234", "Posts"),
                buildStatColoumn("1,333", "Followers"),
                buildStatColoumn("11", "Following"),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RaisedButton(
                    elevation: 0,
                    color: Colors.blue[800],
                    onPressed: () {},
                    child: Text(
                      "Follow ",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(2.0),
                    )),
                RaisedButton(
                    elevation: 0,
                    color: Colors.blue[800],
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ChatRoom()));
                    },
                    child: Text(
                      "Message",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(2.0),
                    )),
                RaisedButton(
                    elevation: 0,
                    color: Colors.white,
                    onPressed: () {
                      showModalBottomSheet(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(10.0)),
                          ),
                          context: context,
                          builder: ((builder) => moreProfileOption()));
                    },
                    child: Text(
                      "more....",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(2.0),
                        side: BorderSide(color: Colors.grey))),
              ],
            ),

            // Divider(),
            SizedBox(height: 300),
          ],
        ),
      ),
    );
  }

  Widget moreProfileOption() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 6),
                child: Text('more....',
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
              ),
            ),
          ),
          Divider(
            height: 2.0,
          ),
          ListTile(
              title: Text('View Posts',
                  style: TextStyle(
                      // fontFamily: "Satisfy",
                      fontSize: 20)),
              leading: Icon(
                MdiIcons.grid,
                size: 25,
                color: Colors.black,
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ViewPost()));
              }),
          //     Divider(),
          ListTile(
              title: Text('E-shop',
                  style: TextStyle(
                      //fontFamily: "Satisfy",
                      fontSize: 20)),
              leading: Icon(
                MdiIcons.shoppingOutline,
                size: 25,
                color: Colors.black,
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Eshop()));
              }),
          //     Divider(),
          ListTile(
              title: Text('Website',
                  style: TextStyle(
                      //     fontFamily: "Satisfy",
                      fontSize: 20)),
              leading: Icon(MdiIcons.web, color: Colors.black, size: 25),
              onTap: () {}),
          //    Divider(),
          ListTile(
              title: Text('Contact us',
                  style: TextStyle(
                      //     fontFamily: "Satisfy",
                      fontSize: 20)),
              leading:
                  Icon(MdiIcons.contactsOutline, color: Colors.black, size: 25),
              onTap: () {}),
          //      Divider(),
          ListTile(
              title: Text('Growth',
                  style: TextStyle(
                      //fontFamily: "Satisfy",
                      fontSize: 20)),
              leading: Icon(
                MdiIcons.chartBar,
                size: 25,
                color: Colors.black,
              ),
              onTap: () {}),
          // Divider(),
          ListTile(
            title: Text('Report this Social', style: TextStyle(fontSize: 20)),
            leading: Icon(
              Icons.report_outlined,
              size: 25,
              color: Colors.black,
            ),
            onTap: () {},
          ),
          // Divider()
        ],
      ),
    );
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

  Widget channelPage() {
    return SingleChildScrollView(
        child: Container(
      margin: EdgeInsets.only(top: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Hero(
                    tag: "",
                    child: Center(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(0, 4, 0, 0),
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(70),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              spreadRadius: 5,
                              //   blurRadius: 20,
                            )
                          ],
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/profile.png'),
                          ),
                        ),
                      ),
                    )),
              ],
            ),
          ),
          SizedBox(
            height: 35,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildStatColoumn("122", "Channel liked"),
              buildStatColoumn("1,234", "Subscribers"),
              buildStatColoumn("1,333", "Videos"),
            ],
          ),
          SizedBox(
            height: 35,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RaisedButton(
                  elevation: 0,
                  color: Colors.blue[800],
                  onPressed: () {},
                  child: Text(
                    "Subscribe",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(2.0),
                  )),
              RaisedButton(
                  elevation: 0,
                  color: Colors.blue[800],
                  onPressed: () {},
                  child: Text(
                    "View Plubs",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(2.0),
                  )),
              RaisedButton(
                  elevation: 0,
                  color: Colors.white,
                  onPressed: () {
                    showModalBottomSheet(
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(10.0)),
                        ),
                        context: context,
                        builder: ((builder) => channelpagemore()));
                  },
                  child: Text(
                    "more....",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(2.0),
                      side: BorderSide(color: Colors.grey))),
            ],
          ),
          // Divider(),
        ],
      ),
    ));
  }

  Widget channelpagemore() {
    return SingleChildScrollView(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          title: Center(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: Text('more....',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            ),
          ),
        ),
        Divider(
          height: 2.0,
        ),
        ListTile(
          title: Text('YouTube Channel',
              style: TextStyle(
                  // fontFamily: "Satisfy",
                  fontSize: 20)),
          leading: Icon(
            MdiIcons.youtube,
            size: 25,
            color: Colors.black,
          ),
          onTap: () {},
        ),
        // Divider(),
        ListTile(
          title: Text('Share',
              style: TextStyle(
                  // fontFamily: "Satisfy",
                  fontSize: 20)),
          leading: Icon(
            MdiIcons.shareOutline,
            size: 25,
            color: Colors.black,
          ),
          onTap: () {},
        ),
        // Divider(),
        ListTile(
          title: Text('Report this channel',
              style: TextStyle(
                  // fontFamily: "Satisfy",
                  fontSize: 20)),
          leading: Icon(
            Icons.report_outlined,
            size: 25,
            color: Colors.black,
          ),
          onTap: () {},
        ),
        // Divider(
        //   height: 20.0,
        // ),
      ],
    ));
  }

  Widget communitPage() {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.only(top: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Hero(
                    tag: "",
                    child: Center(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(0, 4, 0, 0),
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(70),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              spreadRadius: 5,
                              //   blurRadius: 20,
                            )
                          ],
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/profile.png'),
                          ),
                        ),
                      ),
                    )),
              ],
            ),
            SizedBox(
              height: 35,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildStatColoumn("122", "Community members"),
                buildStatColoumn("12", "Community Admins"),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RaisedButton(
                    elevation: 0,
                    color: Colors.blue[800],
                    onPressed: () {},
                    child: Text(
                      "Join Community",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(2.0),
                    )),
                RaisedButton(
                    elevation: 0,
                    color: Colors.white,
                    onPressed: () {
                      showModalBottomSheet(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(10.0)),
                          ),
                          context: context,
                          builder: ((builder) => communityMoreOption()));
                    },
                    child: Text(
                      "more....",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(2.0),
                        side: BorderSide(color: Colors.grey))),
              ],
            ),
            // Divider(),
          ],
        ),
      ),
    );
  }

  Widget communityMoreOption() {
    return SingleChildScrollView(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          title: Center(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: Text('more....',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            ),
          ),
        ),
        Divider(
          height: 2.0,
        ),
        ListTile(
          title: Text('Other Communities',
              style: TextStyle(
                  // fontFamily: "Satisfy",
                  fontSize: 20)),
          leading: Icon(
            MdiIcons.accountMultiplePlusOutline,
            size: 25,
            color: Colors.black,
          ),
          onTap: () {},
        ),
        // Divider(),
        ListTile(
          title: Text('Share Joining Link',
              style: TextStyle(
                  // fontFamily: "Satisfy",
                  fontSize: 20)),
          leading: Icon(
            MdiIcons.shareOutline,
            size: 25,
            color: Colors.black,
          ),
          onTap: () {},
        ),
        // Divider(),
        ListTile(
          title: Text('Report this Community',
              style: TextStyle(
                  // fontFamily: "Satisfy",
                  fontSize: 20)),
          leading: Icon(
            Icons.report_outlined,
            size: 25,
            color: Colors.black,
          ),
          onTap: () {},
        ),
        // Divider(
        //   height: 20.0,
        // ),
      ],
    ));
  }
}
