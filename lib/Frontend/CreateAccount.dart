import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import 'package:plutter/Backend/auth.dart';
import 'package:plutter/Frontend/Login.dart';

import 'Createchannelpage.dart';

class CreateAccount extends StatefulWidget {
  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final AuthenticationService _authenticationService =
      AuthenticationService(FirebaseAuth.instance);

  final auth = FirebaseAuth.instance;

  String username = '';
  String email = '';
  String password = '';

  bool isLoading = false;

  final TextEditingController _username = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _conpassword = TextEditingController();

  String emailValidator(String value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value)) {
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
      // body: isLoading? Container(
      //         child: Center(
      //           child: CircularProgressIndicator(),
      //         ),
      //       )
      //     :
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
                  //   key: _formKey,
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
      controller: _conpassword,
    );
  }

  Widget createAccountBut() {
    return RawMaterialButton(
        fillColor: Colors.blue[800],
        onPressed: () async {
          if (_formKey.currentState.validate()) {
            if (_password.text == _conpassword.text) {
              createNewUser();
            }
          }
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

  Widget userName() {
    return TextFormField(
      // ignore: missing_return
      controller: _username,
      validator: (value) {
        if (value.length < 2 || value.isEmpty) {
          return "Username is too short.";
        } else if (value.length > 12) {
          return "Username is too long.";
        } else {
          return null;
        }
      },
      onSaved: (value) => _username.text.trim(),

      decoration: InputDecoration(
        labelText: 'Select username',
        prefixIcon: Icon(Icons.account_circle),
        border: InputBorder.none,
        contentPadding: EdgeInsets.only(top: 14.0),
      ),
      //       controller: usernameTextEditingController,
    );
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
      //       controller: emailTextEditingController,
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
      controller: _password,
    );
  }

  Future<String> createNewUser({String email, String password}) async {
    try {
      FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password)
          // ignore: deprecated_member_use
          .then((authResult) => Firestore.instance
                  .collection("User")

                  // ignore: deprecated_member_use
                  .document(authResult.user.uid)
                  // ignore: deprecated_member_use
                  .setData({
                "uid": authResult.user.uid,
                "username": _username.text,
                "email": _email.text
              }).then((result) => {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ChannelPage()),
                            (_) => false),
                        _username.clear(),
                        _email.clear(),
                        _password.clear(),
                        _conpassword.clear(),
                      }));
    } on FirebaseAuthException catch (e) {
      return showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text(e.message),
              content: Text("The passwords do not match"),
              actions: [
                FlatButton(
                  child: Text("close"),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                )
              ],
            );
          });
    }
  }
}
