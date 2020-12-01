import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
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
// final AuthServices _auth = AuthServices();
  final auth = FirebaseAuth.instance;
//Register State
  String username = '';
  String email = '';
  String password = '';

  bool isLoading = false;

  final TextEditingController _username = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
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

  Widget createAccountBut() {
    return RawMaterialButton(
        fillColor: Colors.blue[800],
        onPressed: () async {
          try {
            // ignore: deprecated_member_use
            FirebaseUser user =
                (await FirebaseAuth.instance.createUserWithEmailAndPassword(
              // ignore: deprecated_member_use
              email: _email.text.trim(),
              password: _password.text.trim(),
              // ignore: deprecated_member_use
            )) as FirebaseUser;

            if (user != null) {
              //  UserUpdateInfo info = UserUpdateInfo();
            }
          } catch (e) {
            print(e);
            _username.text = "";
            _email.text = "";
            _password.text = "";

            // ignore: todo
            // TODO: alertDialog with error
          }

          // if (_formKey.currentState.validate()) {
          //   createUser();
          // }
          // Navigator.pushReplacement(
          //     context, MaterialPageRoute(builder: (context) => ChannelPage()));
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

  void createUser() async {
    dynamic result = await _authenticationService.createNewUser(
      email: _email.text.trim(),
      password: _password.text.trim(),
    );
    if (result == null) {
      print("User Created");
    } else {
      _email.clear();
      _password.clear();
      _username.clear();
    }
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

      validator: (input) {
        if (input.length < 8) {
          return ' Password must be at least 8 character';
        } else {
          return null;
        }
      },
      decoration: InputDecoration(
        labelText: 'Enter Password',
        prefixIcon: Icon(Icons.lock),
        border: InputBorder.none,
        contentPadding: EdgeInsets.only(top: 14.0),
      ),
      //       controller: passwordTextEditingController,
    );
  }
}
