import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ViewPlubs extends StatefulWidget {
  @override
  _ViewPlubsState createState() => _ViewPlubsState();
}

class _ViewPlubsState extends State<ViewPlubs>
    with SingleTickerProviderStateMixin {
  TabController controller;
  @override
  void initState() {
    controller = new TabController(
      length: 5,
      vsync: this,
    );
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          title: Text(
            "Plub",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
          bottom: TabBar(
            controller: controller,
            isScrollable: true,
            tabs: [
              Tab(
                child: Text('Home', style: TextStyle(color: Colors.black)),
              ),
              Tab(
                child: Text('Video', style: TextStyle(color: Colors.black)),
              ),
              Tab(
                child: Text('Playlist', style: TextStyle(color: Colors.black)),
              ),
              Tab(
                child: Text('Community', style: TextStyle(color: Colors.black)),
              ),
              Tab(
                child: Text('Channel', style: TextStyle(color: Colors.black)),
              ),
            ],
          ),
        ),
        body: TabBarView(
          controller: controller,
          children: [
            Container(child: home()),
            Container(child: home()),
            Container(child: home()),
            Container(child: home()),
            Container(child: home()),
          ],
        ),
      ),
    );
  }

  Widget home() {
    return Scaffold();
  }
}
