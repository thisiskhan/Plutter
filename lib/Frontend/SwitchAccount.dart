import 'package:flutter/material.dart';

class SwitchAccount extends StatefulWidget {
  @override
  _SwitchAccountState createState() => _SwitchAccountState();
}

class _SwitchAccountState extends State<SwitchAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Text(
          'Switch Account',
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 5,
            ),
            ListTile(
              title: Text('Personal Bloger'),
              onTap: () {},
            ),
            ListTile(
              title: Text('E-Commerce '),
              onTap: () {},
            ),
            ListTile(
              title: Text('Artist'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Dating'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Musician'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Clothing(Brand)'),
              //   leading: Icon(),
              onTap: () {},
            ),
            ListTile(
              title: Text('Product/Services'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Beauty, cosmetic & personal care'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Education'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Entrepreneur'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Government Organisation'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Government Official'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Gamer'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Memer'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Restaurent'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Photogrpher'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Traveller'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Shoping & retail'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Foundation'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Author'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Web Designer'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Graphics Designer'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Video Creater'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Android Developer'),
              onTap: () {},
            ),
            ListTile(
              title: Text('ios Developer'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Hybrid Developer'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Others....'),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
