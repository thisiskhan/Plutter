import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/widgets.dart';

class CommunityEdit extends StatefulWidget {
  @override
  _CommunityEditState createState() => _CommunityEditState();
}

class _CommunityEditState extends State<CommunityEdit> {
final _communityProfileKey = GlobalKey<FormState>();
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
          "Edit Community Profile",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
       padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Form(
          key: _communityProfileKey,
          child: ListView(
              children: [
                 communityProfileImage(),
                  SizedBox(
                  height: 10,
                ),
                 communityDescription(),
                  SizedBox(
                  height: 10,
                ),
                communityWeb(),
                 SizedBox(
                  height: 10,
                ),
                communityGithub(),
                  SizedBox(
                  height: 10,
                ),
                 savebutton(),
              ],
          ),
        ),
        )
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

  Widget communityProfileImage(){
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
                           shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(10.0)),
                              ),
                          context: context,
                          builder: ((builder) => communitybottomSheet()));
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
 
   Widget communityGithub() {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
        labelText: 'Github Username',
      ),
    );
  }
  
    Widget communityWeb() {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
        labelText: 'Website',
      ),
    );
  }
   Widget communityDescription() {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
        labelText: 'Description',
      
      ),
      maxLines: 3,
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


   Widget communitybottomSheet() {
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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
