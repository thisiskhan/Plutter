//Edit profile
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'ChannelEdit.dart';
import 'SocialEdit.dart';


class EditProfile extends StatefulWidget {
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final _globalKey = GlobalKey<FormState>();
  TextEditingController nameTextEditingController = new TextEditingController();
  TextEditingController usernameTextEditingController =
      new TextEditingController();
  TextEditingController bioTextEditingController = new TextEditingController();
  PickedFile _imageFile;
  final ImagePicker _picker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Text(
          'Edit Profile',
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Form(
          key: _globalKey,
          child: ListView(
            children: <Widget>[
              profileImage(),
              Divider(),
              SizedBox(height: 10),
              // nameTextField(),
              SizedBox(
                height: 20,
              ),
              soialEditProfile(),
              SizedBox(
                height: 20,
              ),
              channelProfileEdit(),
              SizedBox(
                height: 20,
              ),
              commnityPageEdit(),
              SizedBox(
                height: 20,
              ),
              setupEshop(),
            ],
          ),
        ),
      ),
    );
  }

  Widget soialEditProfile() {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => SocialEdit()));
      },
      child: Card(
        
        shape: StadiumBorder(
          side: BorderSide(
            color: Colors.grey,
            width: 2.0,
          ),
        ),
        child: Container(
          padding: EdgeInsets.all(10),
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  "Socila Discription",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 19,
                  ),
                ),
              ),
           
            ],
          ),
        
        ),
      ),
    );
  }

  Widget channelProfileEdit() {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ChannelEdit()));
      },
      child: Card(
        shape: StadiumBorder(
          side: BorderSide(
            color: Colors.grey,
            width: 2.0,
          ),
        ),
        child: Container(
          padding: EdgeInsets.all(10),
          height: 60,
          child: Row(
             mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Channnel Discription",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 19,
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.only(left: 60),
              //   child: Icon(Icons.arrow_forward_ios),
              // )
            ],
          ),
    
        ),
      ),
    );
  }

  Widget commnityPageEdit() {
    return GestureDetector(
      onTap: () {},
      child: Card(
        shape: StadiumBorder(
          side: BorderSide(
            color: Colors.grey,
            width: 2.0,
          ),
        ),
        child: Container(
          padding: EdgeInsets.all(10),
          height: 60,
          child: Row(
             mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Community Discription",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 19,
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.only(left: 40),
              //   child: Icon(Icons.arrow_forward_ios),
              // )
            ],
          ),
          
        ),
      ),
    );
  }

  Widget setupEshop() {
    return GestureDetector(
      onTap: () {},
      child: Card(
        shape: StadiumBorder(
          side: BorderSide(
            color: Colors.grey,
            width: 2.0,
          ),
        ),
        child: Container(
          padding: EdgeInsets.all(10),
          height: 60,
          child: Row(
             mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Setup Plutter store",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 19,
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.only(left: 70),
              //   child: Icon(Icons.arrow_forward_ios),
              // )
            ],
          ),
          alignment: Alignment.center,
        ),
      ),
    );
  }

  Widget profileImage() {
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
                          builder: ((builder) => bottomSheet()));
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

  Widget bottomSheet() {
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

  void takePhoto(ImageSource source) async {
    final PickedFile = await _picker.getImage(
      source: source,
    );
    setState(() {
      _imageFile = PickedFile;
    });
  }
}