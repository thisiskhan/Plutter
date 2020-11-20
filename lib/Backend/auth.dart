// import 'dart:html';

// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_auth_web/firebase_auth_web.dart';
// import 'package:firebase_core/firebase_core.dart';

// class AuthService {
//   final FirebaseAuth _auth = FirebaseAuth.instance;
//   Future signIn() async {
//     try {
//       UserCredential userCredential = await FirebaseAuth.instance
//           .signInWithEmailAndPassword(
//               email: "abc@gmail.com",
//                password: "SuperSecretPassword!");
//     } on FirebaseAuthException catch (e) {
//       if (e.code == 'user-not-found') {
//         print('No user found for that email.');
//       } else if (e.code == 'wrong-password') {
//         print('Wrong password provided for that user.');
//       }
//     }
//   }

//   Future createUser() async {
//     try {
//       UserCredential userCredential = await FirebaseAuth.instance
//           .createUserWithEmailAndPassword(
//               email: "barry.allen@example.com",
//               password: "SuperSecretPassword!");
//     } on FirebaseAuthException catch (e) {
//       if (e.code == 'weak-password') {
//         print('The password provided is too weak.');
//       } else if (e.code == 'email-already-in-use') {
//         print('The account already exists for that email.');
//       }
//     } catch (e) {
//       print(e);
//     }
//   }
 


// }
