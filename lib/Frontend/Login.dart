// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'CreateAccount.dart';
import 'ViewPosts.dart';

// Login Screen hai ye
class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

//Text field state
  String email = '';
  String password = '';

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  //final AuthServices _auth = AuthServices();

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
                'Login',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: "OpenSans",
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 30.0),
            Container(
              child: Form(
                key: _formKey,
                child: Column(children: <Widget>[
                  Container(
                      child: TextFormField(
                    controller: _emailController,
                   // ignore: missing_return
                   validator: (input) {
                        if (input.isEmpty) {
                          return RegExp(
                                      r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$").hasMatch(input) ? null : "Please Provide a valid email id";
                        }
                      },
                    onChanged: (val) {
                      setState(() => email = val);
                    },
                    onSaved: (input) => email = input,
                    decoration: InputDecoration(
                      labelText: 'Enter email',
                      prefixIcon: Icon(Icons.email),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(top: 14.0),
                    ),
                  )),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                      child: TextFormField(
                    controller: _passwordController,
                    obscureText: true,
                    validator: (String value) {
                      if (value.isEmpty || value.length < 6) {
                        return 'Password must be >= 6 character';
                      }
                      return null;
                    },
                    onChanged: (val) {
                      setState(() => password = val);
                    },
                    onSaved: (input) => password = input,
                    decoration: InputDecoration(
                      labelText: 'Enter Password',
                      prefixIcon: Icon(Icons.lock),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(top: 14.0),
                    ),
                  )),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      child: Text(
                        'Forget Password',
                        style: TextStyle(
                            //      fontFamily: "",
                            color: Colors.blue[800],
                            fontSize: 20),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  RawMaterialButton(
                      fillColor: Colors.blue[800],
                      onPressed: () async {
                        _formKey.currentState.validate();
                        print(email);
                        print(password);
                        // Navigator.pushReplacement(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => PlutterHomePage()));
                      },
                      padding: EdgeInsets.fromLTRB(70, 10, 70, 10),
                      child: Text(
                        'LOGIN',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          //     fontFamily: "Satisfy",
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ))
                ]),
              ),
            ),
            SizedBox(
              height: 80,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CreateAccount()));
              },
              child: RichText(
                  text: TextSpan(children: [
                TextSpan(
                  text: 'Don\'t have an Account?',
                  style: TextStyle(
                    color: Colors.blue[800],
                    fontSize: 18.0,
                    //     fontFamily: "Satisfy",
                    fontWeight: FontWeight.w400,
                  ),
                ),
                TextSpan(
                  text: 'Create Account',
                  style: TextStyle(
                    color: Colors.blue[800],
                    fontSize: 18.0,
                    //     fontFamily: "Satisfy",
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ])),
            )
          ],
        )),
      ),
    );
  }

  // Future<void> login() async {
  //   final formState = _formKey.currentState;
  //   if (formState.validate()) {
  //     try {
  //       UserCredential user = await FirebaseAuth.instance
  //           .signInWithEmailAndPassword(email: email, password: password);
  //     } catch (e) {}
  //   }
  // }
}

// Channel page.

//Community page

// Number authentication screen hai bhai log
class Number extends StatefulWidget {
  @override
  _NumberState createState() => _NumberState();
}

class _NumberState extends State<Number> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

//PLuttr Payment screen
class PlutterPayment extends StatefulWidget {
  @override
  _PlutterPaymentState createState() => _PlutterPaymentState();
}

class _PlutterPaymentState extends State<PlutterPayment> {
  double money = 50.00;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "PlutterPayment",
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontFamily: "OpenSans",
            letterSpacing: -0.1,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: <Widget>[
          IconButton(
              padding: EdgeInsets.only(right: 30),
              icon: Icon(
                MdiIcons.bank,
                size: 25,
                color: Colors.black,
              ),
              onPressed: () {
//Navigator.push(context, MaterialPageRoute(builder: (context) => Camera()));
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AddBank()));
              }),
          IconButton(
            padding: EdgeInsets.only(right: 30),
            icon: Icon(
              MdiIcons.qrcodeScan,
              size: 25,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        child: Stack(
          children: [
            Container(
              height: 300,
              decoration: BoxDecoration(
                  color: Colors.brown[700],
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(60),
                    bottomLeft: Radius.circular(60),
                  )),
            ),
            SafeArea(
              child: ListView(
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: "\nTotal Balance(Plutter Reward) \n",
                                  style: TextStyle(
                                      color: Colors.white.withOpacity(0.5),
                                      fontSize: 18)),
                              TextSpan(
                                  text: "\$ ",
                                  style: TextStyle(
                                      color: Colors.white.withOpacity(0.5),
                                      fontSize: 30)),
                              TextSpan(
                                  text: "1,234.00 \n",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 36)),
                              TextSpan(
                                  text: " \nYour cards",
                                  style: TextStyle(
                                      color: Colors.white.withOpacity(0.5),
                                      fontSize: 18)),
                            ]),
                          ),
                        ),
                        IconButton(
                            icon: Icon(
                              Icons.more_vert,
                              color: Colors.white,
                              size: 40,
                            ),
                            onPressed: () {})
                      ]),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        CreditCard(
                          color: "2a1214",
                          number: 9290,
                          image: "",
                          valid: "VALID 10/22",
                        ),
                        CreditCard(
                          color: "000068",
                          number: 1298,
                          image: "",
                          valid: "VALID 07/24",
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Send money"),
                      ),
                    ],
                  ),
                  Container(
                    height: 50,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: CircleAvatar(
                            backgroundColor: Colors.white70,
                            child: Icon(Icons.add),
                            radius: 25,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/images/profile.png"),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/images/profile.png"),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/images/profile.png"),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Recent transactions"),
                      ),
                    ],
                  ),
                  ListTile(
                    onTap: () {
                      _settingModalBottomSheet(context);
                    },
                    leading: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/profile.png"),
                    ),
                    title: RichText(
                        text: TextSpan(children: [
                      TextSpan(text: 'Marley Geremy\n'),
                      TextSpan(
                          text: 'Money Sent - Today 9AM',
                          style: TextStyle(fontSize: 14, color: Colors.grey))
                    ], style: TextStyle(color: Colors.black, fontSize: 18))),
                    trailing: Text(
                      "- \$430",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      _settingModalBottomSheet(context);
                    },
                    leading: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/profile.png"),
                    ),
                    title: RichText(
                        text: TextSpan(children: [
                      TextSpan(text: 'Jason Martin\n'),
                      TextSpan(
                          text: 'Money received - Today 12PM',
                          style: TextStyle(fontSize: 14, color: Colors.grey))
                    ], style: TextStyle(color: Colors.black, fontSize: 18))),
                    trailing: Text(
                      "+ \$220",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      _settingModalBottomSheet(context);
                    },
                    leading: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/profile.png"),
                    ),
                    title: RichText(
                        text: TextSpan(children: [
                      TextSpan(text: 'Jason Martin\n'),
                      TextSpan(
                          text: 'Money received - Today 12PM',
                          style: TextStyle(fontSize: 14, color: Colors.grey))
                    ], style: TextStyle(color: Colors.black, fontSize: 18))),
                    trailing: Text(
                      "+ \$220",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      _settingModalBottomSheet(context);
                    },
                    leading: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/profile.png"),
                    ),
                    title: RichText(
                        text: TextSpan(children: [
                      TextSpan(text: 'Jason Martin\n'),
                      TextSpan(
                          text: 'Money received - Today 12PM',
                          style: TextStyle(fontSize: 14, color: Colors.grey))
                    ], style: TextStyle(color: Colors.black, fontSize: 18))),
                    trailing: Text(
                      "+ \$220",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      _settingModalBottomSheet(context);
                    },
                    leading: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/profile.png"),
                    ),
                    title: RichText(
                        text: TextSpan(children: [
                      TextSpan(text: 'Jason Martin\n'),
                      TextSpan(
                          text: 'Money received - Today 12PM',
                          style: TextStyle(fontSize: 14, color: Colors.grey))
                    ], style: TextStyle(color: Colors.black, fontSize: 18))),
                    trailing: Text(
                      "+ \$220",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      _settingModalBottomSheet(context);
                    },
                    leading: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/profile.png"),
                    ),
                    title: RichText(
                        text: TextSpan(children: [
                      TextSpan(text: 'Jason Martin\n'),
                      TextSpan(
                          text: 'Money received - Today 12PM',
                          style: TextStyle(fontSize: 14, color: Colors.grey))
                    ], style: TextStyle(color: Colors.black, fontSize: 18))),
                    trailing: Text(
                      "+ \$220",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void _settingModalBottomSheet(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20))),
            child: new Wrap(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 25,
                        backgroundImage:
                            AssetImage("assets/images/profile.png"),
                      ),
                    ),
                  ],
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    "Jason Martin",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text("Amount to send"),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: InkWell(
                          onTap: () {
                            if (money != 0) {
                              money -= 10;
                            }
                          },
                          child: CircleAvatar(
                            child: Icon(
                              Icons.remove,
                              color: Colors.white,
                            ),
                            radius: 20,
                            backgroundColor: Colors.grey,
                          )),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "$money",
                      style:
                          TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: InkWell(
                          onTap: () {
                            setState(() {
                              money += 10;
                            });
                          },
                          child: CircleAvatar(
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                            radius: 20,
                            backgroundColor: Colors.grey,
                          )),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(12),
                          child: Text(
                            "Send Money",
                            style: TextStyle(fontSize: 22, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        });
  }
}

//Credit card screen
class CreditCard extends StatelessWidget {
  final String color;
  final String image;
  final int number;
  final String valid;

  CreditCard({this.color, this.image, this.number, this.valid});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 8, 20, 8),
      child: Container(
        height: 180,
        width: 300,
        decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey[600],
                  offset: Offset(3, 1),
                  blurRadius: 7,
                  spreadRadius: 2)
            ]),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    "images/$image",
                    width: 50,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.more_vert,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: "Mohammed Raza Khan\n",
                        style: TextStyle(color: Colors.white, fontSize: 18)),
                    TextSpan(text: "**** **** **** ${number.toString()}\n"),
                    TextSpan(
                        text: valid,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w300))
                  ], style: TextStyle(fontSize: 22))),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

//Account setting page

//ViewPost screen
