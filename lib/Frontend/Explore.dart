import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Explore extends StatefulWidget {
  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  TabController controller;
//DatabaseMethods databaseMethods = new DatabaseMethods();
  TextEditingController exploreTextEditingController =
      new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 12,
      child: Scaffold(
        appBar: AppBar(
            elevation: 0,
            iconTheme: IconThemeData(color: Colors.black),
            backgroundColor: Colors.white,
            leading: Icon(
              Icons.search,
              size: 30,
              color: Colors.black,
            ),
            title: TextField(
              controller: exploreTextEditingController,
              decoration: InputDecoration(
                  hintText: "Search",
                  hintStyle: TextStyle(fontSize: 20),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  )),
            ),
            actions: [
              IconButton(
                  icon: Icon(
                    Icons.mic,
                    size: 30,
                    color: Colors.black,
                  ),
                  onPressed: () {}),
              IconButton(
                  icon: Icon(
                    Icons.qr_code_scanner,
                    size: 30,
                    color: Colors.black,
                  ),
                  onPressed: () {})
            ],
            bottom: TabBar(controller: controller, isScrollable: true, tabs: [
              Tab(
                child: Text('Posts', style: TextStyle(color: Colors.black)),
                icon: Icon(
                  MdiIcons.grid,
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
              Tab(
                child: Text('Plub', style: TextStyle(color: Colors.black)),
                icon: Icon(
                  MdiIcons.playBox,
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
              Tab(
                child: Text('Pluts', style: TextStyle(color: Colors.black)),
                icon: Icon(
                  MdiIcons.feather,
                  color: Colors.black,
                ),
              ),
              Tab(
                child: Text('Shop', style: TextStyle(color: Colors.black)),
                icon: Icon(
                  MdiIcons.shopping,
                  color: Colors.black,
                ),
              ),
              //
              Tab(
                child: Text('Alive', style: TextStyle(color: Colors.black)),
                icon: Icon(
                  MdiIcons.videoWireless,
                  size: 28,
                  color: Colors.black,
                ),
              ),
              Tab(
                child: Text('Music', style: TextStyle(color: Colors.black)),
                icon: Icon(
                  MdiIcons.music,
                  color: Colors.black,
                ),
              ),
              Tab(
                child: Text('Beauty', style: TextStyle(color: Colors.black)),
                icon: Icon(
                  MdiIcons.faceWoman,
                  color: Colors.black,
                ),
              ),
              Tab(
                child: Text('Science & Technilogy',
                    style: TextStyle(color: Colors.black)),
                icon: Icon(
                  MdiIcons.brain,
                  color: Colors.black,
                ),
              ),
              Tab(
                child:
                    Text('Programing', style: TextStyle(color: Colors.black)),
                icon: Icon(
                  MdiIcons.codeTags,
                  color: Colors.black,
                ),
              ),

              Tab(
                child: Text('Sports', style: TextStyle(color: Colors.black)),
                icon: Icon(
                  MdiIcons.baseballBat,
                  color: Colors.black,
                ),
              ),
              Tab(
                child: Text(
                  "Fitness",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                icon: Icon(
                  MdiIcons.dumbbell,
                  color: Colors.black,
                ),
              ),
            ])),
        body: TabBarView(controller: controller, children: [
          Container(
            child: exPosts(),
          ),
          Container(
            child: exFlare(),
          ),
          Container(
            child: exPlubs(),
          ),
          // Container(
          //   child: exBlogs(),
          // ),
          Container(
            child: exPluts(),
          ),
          Container(
            child: exShop(),
          ),
          Container(
            child: exAlive(),
          ),
          Container(child: exMusic()),
          Container(
            child: exBeauty(),
          ),
          Container(
            child: exScienceTech(),
          ),
          Container(child: exProgaming()),
          Container(
            child: exSports(),
          ),
          Container(
            child: exFitness(),
          ),
        ]),
      ),
    );
  }

  Widget exPosts() {
    return Scaffold(
      body: GridView.count(
          crossAxisCount: 3,
          children: List.generate(
              30,
              (index) => Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    elevation: 1,
                    child: Container(
                      // child:NetworkImage("https://unsplash.com/s/photos/Center(child: Text("Explore Photos")),
                      child: Center(child: Text("Explore Posts")),
                    ),
                  ))),
    );
  }

  Widget exFlare() {
    return Scaffold(
      body: GridView.count(
          crossAxisCount: 2,
          children: List.generate(
              30,
              (index) => Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    elevation: 1,
                    child: Container(
                      child: Center(child: Text("Explore Flare")),
                    ),
                  ))),
    );
  }

  Widget exPlubs() {
    return Scaffold(
      body: GridView.count(
          crossAxisCount: 1,
          children: List.generate(
              30,
              (index) => Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    elevation: 1,
                    child: Container(
                      child: Center(child: Text("Explore Videos")),
                    ),
                  ))),
    );
  }

  Widget exPluts() {
    return Scaffold(
      body: GridView.count(
          crossAxisCount: 1,
          children: List.generate(
              30,
              (index) => Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    elevation: 1,
                    child: Container(
                      child: Center(child: Text("Explore Pluts")),
                    ),
                  ))),
    );
  }

  Widget exShop() {
    return Scaffold(
      body: GridView.count(
          crossAxisCount: 2,
          children: List.generate(
              30,
              (index) => Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    elevation: 1,
                    child: Container(
                      child: Center(child: Text("Explore Shoping")),
                    ),
                  ))),
    );
  }

  Widget exAlive() {
    return Scaffold(
      body: GridView.count(
          crossAxisCount: 1,
          children: List.generate(
              30,
              (index) => Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    elevation: 1,
                    child: Container(
                      child: Center(child: Text("Explore Streaming")),
                    ),
                  ))),
    );
  }

  Widget exMusic() {
    return Scaffold(
      body: GridView.count(
          crossAxisCount: 2,
          children: List.generate(
              30,
              (index) => Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    elevation: 1,
                    child: Container(
                      child: Center(child: Text("Explore Musics")),
                    ),
                  ))),
    );
  }

  Widget exBeauty() {
    return Scaffold(
      body: GridView.count(
          crossAxisCount: 2,
          children: List.generate(
              30,
              (index) => Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    elevation: 1,
                    child: Container(
                      child: Center(child: Text("Explore Beauty")),
                    ),
                  ))),
    );
  }

  Widget exScienceTech() {
    return Scaffold(
      body: GridView.count(
          crossAxisCount: 1,
          children: List.generate(
              30,
              (index) => Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    elevation: 1,
                    child: Container(
                      child:
                          Center(child: Text("Explore Science & Technology")),
                    ),
                  ))),
    );
  }

  Widget exProgaming() {
    return Scaffold(
      body: GridView.count(
          crossAxisCount: 3,
          children: List.generate(
              30,
              (index) => Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    elevation: 1,
                    child: Container(
                      child: Center(child: Text("Explore Coding")),
                    ),
                  ))),
    );
  }

  Widget exSports() {
    return Scaffold(
      body: GridView.count(
          crossAxisCount: 2,
          children: List.generate(
              30,
              (index) => Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    elevation: 1,
                    child: Container(
                      child: Center(child: Text("Explore Sports")),
                    ),
                  ))),
    );
  }

  Widget exFitness() {
    return Scaffold(
      body: GridView.count(
          crossAxisCount: 2,
          children: List.generate(
              30,
              (index) => Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    elevation: 1,
                    child: Container(
                      child: Center(child: Text("Explore Fittness")),
                    ),
                  ))),
    );
  }
}