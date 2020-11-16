import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';


class SocialEdit extends StatefulWidget {
  @override
  _SocialEditState createState() => _SocialEditState();
}

class _SocialEditState extends State<SocialEdit> {
  final _socialProfileKey = GlobalKey<FormState>();
  PickedFile _imageFile;
  final ImagePicker _picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 1,
        title: Text(
          "Edit Social Profiel",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Form(
            key: _socialProfileKey,
            child: ListView(
              children: [
                socialProfileImage(),
                SizedBox(
                  height: 10,
                ),
                nameTextField(),
                SizedBox(
                  height: 10,
                ),
                socialBio(),
                SizedBox(
                  height: 10,
                ),
                socialGithub(),
                SizedBox(
                  height: 10,
                ),
                socialWeb(),
                SizedBox(
                  height: 10,
                ),
                socialDOB(),
                SizedBox(
                  height: 10,
                ),
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
          labelText: 'Name'),
    );
  }

  Widget socialBio() {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
        labelText: 'Bio',
      
      ),
      maxLines: 3,
    );
  }

  Widget socialWeb() {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
        labelText: 'Website',
      ),
    );
  }

  Widget socialGithub() {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
        labelText: 'Github Username',
      ),
    );
  }

  Widget socialDOB() {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
        labelText: 'Date of birth',
      ),
    );
  }

  Widget savebutton() {
    return Center(
      widthFactor: 150,
      child: RawMaterialButton(
          onPressed: () {},
          fillColor: Colors.blue[800],
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

  void takePhoto(ImageSource source) async {
    final PickedFile = await _picker.getImage(
      source: source,
    );
    setState(() {
      _imageFile = PickedFile;
    });
  }

  Widget socialProfileImage() {
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
                          builder: ((builder) => socialbottomSheet()));
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

  Widget socialbottomSheet() {
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
}
