import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class CommunityProfile extends StatefulWidget {
  @override
  _CommunityProfileState createState() => _CommunityProfileState();
}

class _CommunityProfileState extends State<CommunityProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              child: Icon(Icons.notifications_outlined, color: Colors.black),
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
    ),
    body: communityPage(),
    );
  }


  Widget communityPage() {
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
}
