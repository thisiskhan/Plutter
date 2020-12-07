import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:plutter/Backend/auth.dart';
import 'package:plutter/Frontend/Createchannelpage.dart';
import 'package:plutter/Frontend/Login.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class CreateAccount extends StatefulWidget {
  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  bool socialPageCheck = false;
  bool channelPageCheck = false;
  bool communityPageCheck = false;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final AuthenticationService _authenticationService =
      AuthenticationService(FirebaseAuth.instance);

  final auth = FirebaseAuth.instance;

  String username;
  String email;
  String password;

  bool isLoading = false;

  TextEditingController _usernamecon;
  TextEditingController _emailcon;
  TextEditingController _passwordcon;
  TextEditingController _conpasswordcon;

  get usernamesRef => null;

  @override
  initState() {
    _emailcon = new TextEditingController();
    _usernamecon = new TextEditingController();
    _passwordcon = new TextEditingController();
    _conpasswordcon = new TextEditingController();

    super.initState();
  }

  String emailValidator(String value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (value.isEmpty) {
      return 'Email format is invalid';
    } else {
      return null;
    }
  }

  String pwdValidator(String value) {
    if (value.length < 8) {
      return 'Password must be longer than 8 characters';
    } else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 80.0),
                child: Text(
                  'Create Account',
                  style: TextStyle(
                    color: Colors.black,
                    // fontFamily: 'OpenSans',
                    fontSize: 30.0,
                    fontFamily: "OpenSans",
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 30.0),
              Container(
                child: Form(
                  key: _formKey,
                  child: Column(children: <Widget>[
                    userName(),
                    SizedBox(
                      height: 20,
                    ),
                    emailIdCreate(),
                    SizedBox(
                      height: 20,
                    ),
                    passwordCreate(),
                    SizedBox(
                      height: 20,
                    ),
                    conformPassword(),
                    SizedBox(
                      height: 40,
                    ),
                    createAccountBut(),
                  ]),
                ),
              ),
              SizedBox(height: 80.0),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Login()));
                },
                child: RichText(
                    text: TextSpan(children: [
                  TextSpan(
                    text: 'Already have an Account?',
                    style: TextStyle(
                      color: Colors.blue[800],
                      fontSize: 18.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  TextSpan(
                    text: 'Login',
                    style: TextStyle(
                      color: Colors.blue[800],
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ])),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget conformPassword() {
    return TextFormField(
      obscureText: true,
      validator: pwdValidator,
      decoration: InputDecoration(
        labelText: 'Re-enter Password',
        prefixIcon: Icon(Icons.lock),
        border: InputBorder.none,
        contentPadding: EdgeInsets.only(top: 14.0),
      ),
      controller: _conpasswordcon,
    );
  }

  Widget createAccountBut() {
    return RawMaterialButton(
        fillColor: Colors.blue[800],
        onPressed: () {
          return showDialog(
              context: context,
              builder: (context) {
                return Dialog(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  elevation: 16,
                  child: Container(
                    height: 400.0,
                    width: 360.0,
                    child: ListView(
                      children: <Widget>[
                        SizedBox(height: 20),
                        Center(
                          child: Text(
                            "Profile options",
                            style: TextStyle(
                                fontSize: 24,
                                color: Colors.blue,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(height: 20),
                        Divider(),
                        ListTile(
                          leading: CircleAvatar(
                            child: Text("S"),
                          ),
                          title: Text("Socila Page"),
                          trailing: Checkbox(
                            value: socialPageCheck,
                            activeColor: Colors.blue[800],
                            onChanged: (bool value) {
                              setState(() {
                                socialPageCheck = value;
                              });
                            },
                          ),
                        ),
                        Divider(),
                        ListTile(
                          leading: CircleAvatar(
                            child: Text("Ch"),
                          ),
                          title: Text("Channel Page"),
                          trailing: Checkbox(
                            value: channelPageCheck,
                            activeColor: Colors.blue[800],
                            onChanged: (bool value) {
                              setState(() {
                                channelPageCheck = value;
                              });
                            },
                          ),
                        ),
                        Divider(),
                        ListTile(
                          leading: CircleAvatar(
                            child: Text("Cu"),
                          ),
                          title: Text("Community Page"),
                          trailing: Checkbox(
                            value: communityPageCheck,
                            activeColor: Colors.blue[800],
                            onChanged: (bool value) {
                              setState(() {
                                communityPageCheck = value;
                              });
                            },
                          ),
                        ),
                        Divider(
                          height: 10,
                        ),
                        Center(
                            child: RaisedButton(
                                color: Colors.blue[800],
                                onPressed: () {},
                                child: Text(
                                  'Continue',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                ))),
                      ],
                    ),
                  ),
                );
              });
        },
        padding: EdgeInsets.fromLTRB(70, 10, 70, 10),
        child: Text(
          'CREATE ACCOUNT',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ));
  }

  Future<void> createNewUser({String email, String password}) async {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    FirebaseAuth.instance
        .createUserWithEmailAndPassword(
            email: email ?? 'khan123@gmail.com', password: password)
        .then((currentUser) =>
            // ignore: deprecated_member_use
            Firestore.instance
                .collection("users")
                // ignore: deprecated_member_use
                .document(currentUser.user.uid)
                // ignore: deprecated_member_use
                .setData({
              "uid": currentUser.user.uid,
              "email": _emailcon.text,
              "username": _usernamecon.text,
              "password": _passwordcon.text
            }).then((result) => {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ChannelPage()),
                          (_) => false),
                      _usernamecon.clear(),
                      _passwordcon.clear(),
                      _emailcon.clear(),
                      _conpasswordcon.clear(),
                    }));
  }

  Widget userName() {
    return TextFormField(
      // ignore: missing_return
      controller: _usernamecon,
      validator: (value) {
        if (value.length < 2 || value.isEmpty) {
          return "Username is too short.";
        } else if (value.length > 12) {
          return "Username is too long.";
        } else {
          return null;
        }
      },
      onSaved: (value) => _usernamecon.text.trim(),

      decoration: InputDecoration(
        labelText: 'Select username',
        prefixIcon: Icon(Icons.account_circle),
        border: InputBorder.none,
        contentPadding: EdgeInsets.only(top: 14.0),
      ),
    );
  }

  Future<bool> usernameCheck() async {
    final snapShot = await usernamesRef.document(_usernamecon).get();
    if (snapShot == null || !snapShot.exists) {
      return true; //username is unique.
    } else {
      return false; //username exists.
    }
  }

  Widget emailIdCreate() {
    return TextFormField(
      // ignore: missing_return
      keyboardType: TextInputType.emailAddress,
      validator: emailValidator,
      decoration: InputDecoration(
        labelText: 'Enter email',
        prefixIcon: Icon(Icons.email),
        border: InputBorder.none,
        contentPadding: EdgeInsets.only(top: 14.0),
      ),
      controller: _emailcon,
    );
  }

  Widget passwordCreate() {
    return TextFormField(
      obscureText: true,
      validator: pwdValidator,
      decoration: InputDecoration(
        labelText: 'Enter Password',
        prefixIcon: Icon(Icons.lock),
        border: InputBorder.none,
        contentPadding: EdgeInsets.only(top: 14.0),
      ),
      controller: _passwordcon,
    );
  }
}
