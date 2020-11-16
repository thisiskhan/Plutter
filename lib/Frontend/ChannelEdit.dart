import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ChannelEdit extends StatefulWidget {
  @override
  _ChannelEditState createState() => _ChannelEditState();
}

class _ChannelEditState extends State<ChannelEdit> {
  final _channelProfileKey = GlobalKey<FormState>();
  PickedFile _imageFile;
  final ImagePicker _picker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Edit Channel Discription",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Form(
            child: ListView(
          children: [
            chaneelProfileImage(),
            SizedBox(
              height: 10,
            ),
            channelDiscription(),
            SizedBox(
              height: 10,
            ),
            youTube(),
            SizedBox(
              height: 10,
            ),
            website(),
            SizedBox(
              height: 10,
            ),
            github(),
            SizedBox(
              height: 10,
            ),
            twitter(),
            SizedBox(
              height: 40,
            ),
            movetoStudio(),
                savebutton(),
          ],
        )),
      ),
    );
  }

  Widget nameTextField() {
    return TextFormField(
      decoration: InputDecoration(
          border:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
          labelText: 'Channel name'),
    );
  }

  Widget channelDiscription() {
    return TextFormField(
      decoration: InputDecoration(
          border:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
          labelText: 'Channel Discription'),
    );
  }

  Widget youTube() {
    return TextFormField(
      decoration: InputDecoration(
          border:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
          labelText: 'YouTube Channel Link'),
    );
  }

  Widget twitter() {
    return TextFormField(
      decoration: InputDecoration(
          border:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
          labelText: 'Twitter Username'),
    );
  }

  Widget website() {
    return TextFormField(
      decoration: InputDecoration(
          border:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
          labelText: 'Website'),
    );
  }

  Widget github() {
    return TextFormField(
      decoration: InputDecoration(
          border:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
          labelText: 'Github Username'),
    );
  }

  Widget chaneelProfileImage() {
    return Center(
      child: Stack(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 70.0,
                backgroundImage: _imageFile == null
                    ? AssetImage("assets/images/profile.png")
                    : FileImage(File(_imageFile.path)),
              ),
              Positioned(
                bottom: 20.0,
                right: 20.0,
                child: InkWell(
                    onTap: () {
                      showModalBottomSheet(
                          context: context,
                          builder: ((builder) => channelottomSheet()));
                    },
                    child: Text(
                      'Change Profile',
                      style: TextStyle(
                        fontSize: 18,
                        //  fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    )),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void takePhoto(ImageSource source) async {
    final PickedFile = await _picker.getImage(
      source: source,
    );
    setState(() {
      _imageFile = PickedFile;
    });
  }

  Widget channelottomSheet() {
    return Container(
      height: 100.0,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      child: Column(
        children: <Widget>[
          Text(
            'Chose profile photo',
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton.icon(
                  onPressed: () {
                    takePhoto(ImageSource.camera);
                  },
                  icon: Icon(Icons.camera),
                  label: Text("Camera")),
              FlatButton.icon(
                  onPressed: () {
                    takePhoto(ImageSource.gallery);
                  },
                  icon: Icon(Icons.image),
                  label: Text("Gallery"))
            ],
          ),
        ],
      ),
    );
  }

  Widget savebutton() {
    return Center(
      widthFactor: 150,
      child: RaisedButton(
          onPressed: () {},
          color: Colors.blue[800],
          child: Text(
            'Save',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          )),
    );
  }

  Widget movetoStudio() {
    return Center(
      widthFactor: 150,
      child: RaisedButton(
          onPressed: () {},
          color: Colors.blue[800],
          child: Text(
            'Plutter Studio',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          )),
    );
  }
}
