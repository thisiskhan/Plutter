import 'package:firebase_auth/firebase_auth.dart';
import 'package:plutter/Backend/User.dart' as Puser; 
class AuthenticationService {
  final FirebaseAuth _firebaseAuth;
  AuthenticationService(this._firebaseAuth);

  // ignore: deprecated_member_use
  // User _userFromFirebaseUser(FirebaseUser user) {
  //   return user != null ? Puser(uid: user.uid) : null;
  // }

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

  Future logOut() async {
    await _firebaseAuth.signOut();
  }

  Future resetPassword(String email) async {
    try {
      return await _firebaseAuth.sendPasswordResetEmail(email: email);
    } catch (e) {
      return e.toString();
    }
  }

  // Future phoneNumberLogin(int )async{
  //   try {
  //     await _firebaseAuth.signInWithPhoneNumber()
  //   } catch (e) {
  //   }
  // }
}
