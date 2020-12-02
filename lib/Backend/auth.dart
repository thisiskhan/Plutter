import 'package:firebase_auth/firebase_auth.dart';

class AuthenticationService {
  final FirebaseAuth _firebaseAuth;
  AuthenticationService(this._firebaseAuth);

  Stream<User> get authStateChanges => _firebaseAuth.authStateChanges();

  Future<String> login({String email, String password}) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      return "Loged in";
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }


// Creating account with email and password
  Future createNewUser({String email, String password}) async {
    try {
      UserCredential userCredential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      // ignore: deprecated_member_use
      FirebaseUser user = userCredential.user;
      return user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        return 'The password provided is too weak.';
      } else if (e.code == 'email-already-in-use') {
        return 'The account already exists for that email.';
      }
    } catch (e) {
      print(e);
    }

    // try {

    //  // AuthResult result
    //  await _firebaseAuth.createUserWithEmailAndPassword(
    //       email: email, password: password);

    //   return "Account Created";
    // } on FirebaseAuthException catch (e) {
    //   return e.message;
    // }
  }

  Future<void> logOut() async {
    await _firebaseAuth.signOut();
  }
}
