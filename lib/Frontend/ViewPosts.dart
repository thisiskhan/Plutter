import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ViewPost extends StatefulWidget {
  @override
  _ViewPostState createState() => _ViewPostState();
}

class _ViewPostState extends State<ViewPost>
    with SingleTickerProviderStateMixin {
  TabController controller;
  @override
  void initState() {
    // TODO: implement initState
    controller = new TabController(length: 8, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 8,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
          title: Text(
            'Posts',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              //   fontFamily: "Satisfy",
              //  fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.white,
          bottom: TabBar(
            controller: controller,
            isScrollable: true,
            tabs: [
              Tab(
                child: Text('Photos', style: TextStyle(color: Colors.black)),
                icon: Icon(
                  MdiIcons.grid,
                  color: Colors.black,
                ),
              ),
              Tab(
                child: Text('Videos', style: TextStyle(color: Colors.black)),
                icon: Icon(
                  MdiIcons.playBox,
                  color: Colors.black,
                ),
              ),
              Tab(
                child: Text('Flare', style: TextStyle(color: Colors.black)),
                icon: Icon(
                  MdiIcons.motionPlay,
                  color: Colors.black,
                ),
              ),
              //
              Tab(
                child: Text('Streams', style: TextStyle(color: Colors.black)),
                icon: Icon(
                  MdiIcons.videoWireless,
                  size: 28,
                  color: Colors.black,
                ),
              ),
              Tab(
                child: Text('Pluts', style: TextStyle(color: Colors.black)),
                icon: Icon(
                  MdiIcons.feather,
                  color: Colors.black,
                ),
              ),
              // Tab(
              //   child: Text('Blogs', style: TextStyle(color: Colors.black)),
              //   icon: Icon(
              //     MdiIcons.blogger,
              //     color: Colors.black,
              //   ),
              // ),

              //

              Tab(
                child: Text('Locations', style: TextStyle(color: Colors.black)),
                icon: Icon(
                  Icons.location_on,
                  color: Colors.black,
                ),
              ),
              Tab(
                child: Text('Tag', style: TextStyle(color: Colors.black)),
                icon: Icon(
                  MdiIcons.tagHeart,
                  color: Colors.black,
                ),
              ),
              Tab(
                child: Text('QRcode', style: TextStyle(color: Colors.black)),
                icon: Icon(
                  MdiIcons.qrcode,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(controller: controller, children: [
          Container(
            child: photos(),
          ),
          Container(
            child: videos(),
          ),
          Container(
            child: flare(),
          ),
          //  Container(
          //   child: music(),
          // ),
          Container(
            child: streams(),
          ),
          Container(
            child: pluts(),
          ),
          // Container(
          //   child: articles(),
          // ),
          // Container(
          //   child: blogs(),
          // ),
          Container(child: locations()),
          Container(
            child: tags(),
          ),
          Container(
            child: qrCode(),
          ),
        ]),
      ),
    );
  }
}

Widget photos() {
  return Scaffold(
    body: GridView.count(
        crossAxisCount: 3,
        children: List.generate(
            30,
            (index) => Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  elevation: 1,
                  child: Container(
                    child: Text("$index"),
                  ),
                ))),
  );
}

Widget videos() {
  return Scaffold(
    body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(
            30,
            (index) => Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  elevation: 1,
                  child: Container(
                    child: Text("$index"),
                  ),
                ))),
  );
}

Widget flare() {
  return Scaffold(
    body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(
            30,
            (index) => Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  elevation: 1,
                  child: Container(
                    child: Text("$index"),
                  ),
                ))),
  );
}

Widget music() {
  return Scaffold(
    body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(
            30,
            (index) => Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  elevation: 1,
                  child: Container(
                    child: Text("$index"),
                  ),
                ))),
  );
}

Widget streams() {
  return Scaffold(
    body: GridView.count(
        crossAxisCount: 1,
        children: List.generate(
            30,
            (index) => Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  elevation: 1,
                  child: Container(
                    child: Text("$index"),
                  ),
                ))),
  );
}

Widget pluts() {
  return Scaffold(
    body: GridView.count(
        crossAxisCount: 1,
        children: List.generate(
            30,
            (index) => Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  elevation: 1,
                  child: Container(
                    child: Text("$index"),
                  ),
                ))),
  );
}

Widget blogs() {
  return Scaffold(
    body: GridView.count(
        crossAxisCount: 1,
        children: List.generate(
            30,
            (index) => Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  elevation: 1,
                  child: Container(
                    child: Text("$index"),
                  ),
                ))),
  );
}

Widget locations() {
  return Scaffold(
    body: GridView.count(
        crossAxisCount: 1,
        children: List.generate(
            30,
            (index) => Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  elevation: 1,
                  child: Container(
                    child: Text("$index"),
                  ),
                ))),
  );
}

Widget tags() {
  return Scaffold(
    body: GridView.count(
        crossAxisCount: 3,
        children: List.generate(
            30,
            (index) => Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  elevation: 1,
                  child: Container(
                    child: Text("$index"),
                  ),
                ))),
  );
}

Widget qrCode() {
  return Scaffold(
    body: GridView.count(
        crossAxisCount: 1,
        children: List.generate(
            0,
            (index) => Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  elevation: 1,
                  child: Container(
                    child: Text("$index"),
                  ),
                ))),
  );
}

//Add bank screen
class AddBank extends StatefulWidget {
  @override
  _AddBankState createState() => _AddBankState();
}

class _AddBankState extends State<AddBank> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        title: Text(
          "Add Bank",
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontFamily: "OpenSans",
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
