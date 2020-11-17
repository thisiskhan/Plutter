import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Eshop extends StatefulWidget {
  @override
  _EshopState createState() => _EshopState();
}

class _EshopState extends State<Eshop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 1,
        title: Text(
          "e-shop",
          style: TextStyle(color: Colors.black, fontFamily: "OpenSans"),
        ),
        actions: [
          IconButton(
              tooltip: "Store",
              icon: Icon(MdiIcons.store, color: Colors.black, size: 30),
              onPressed: null),
          IconButton(
              tooltip: "Shopping Bag",
              icon: Icon(MdiIcons.shopping, color: Colors.black, size: 25),
              onPressed: null),
        ],
      ),
      body: userProducts(),
    );
  }

  Widget userProducts() {
    return Scaffold(
      body: GridView.count(
          crossAxisCount: 2,
          children: List.generate(
              30,
              (index) => Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0)),
                  elevation: 1,
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: IconButton(
                              tooltip: "Like the product",
                              icon: Icon(
                                MdiIcons.heartOutline,
                                color: Colors.black,
                                size: 25,
                              ),
                              onPressed: null),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: IconButton(
                              tooltip: "Comment",
                              icon: Icon(
                                MdiIcons.commentOutline,
                                color: Colors.black,
                                size: 25,
                              ),
                              onPressed: null),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: IconButton(
                              tooltip: "Add to bag",
                              icon: Icon(
                                MdiIcons.shoppingOutline,
                                color: Colors.black,
                                size: 25,
                              ),
                              onPressed: null),
                        ),
                        // Padding(
                        //   padding: const EdgeInsets.all(10),
                        //   child: IconButton(
                        //       tooltip: "Book Mark",
                        //       icon: Icon(
                        //         MdiIcons.bookmarkOutline,
                        //         color: Colors.black,
                        //         size: 25,
                        //       ),
                        //       onPressed: null),
                        // ),
                      ],
                    ),
                  )))),
    );
  }
}
