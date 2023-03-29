import 'package:firebase_auth/firebase_auth.dart';

class AuthService{

  final FirebaseAuth _auth= FirebaseAuth.instance;
 User _userFromFirebaseUser(FirebaseUser user){
   return user != null ? User(uid: user.uid):null;
  }
Stream<FirebaseUser> get user{
  return _auth.onAuthStateChanged
      .map(_userFromFirebaseUser);
}
  //sing in with email & password
  Future logInWithEmailAndPassword(String email,String passwoard) async{
    try{
      AuthResult result = await _auth.signInWithEmailAndPassword(email: email, password: password);
      FirebaseUser user= result.user;
      return _userFromFirebaseUser(user);
    }catch(e){
      print(e.toString());
      return null;

    }
    Future registerWithEmailAndPassword(String email,String passwoard) async{
      try{
        AuthResult result = await _auth.createUserWithEmailAndPassword(email: email, password: passwoard);
        FirebaseUser user= result.user;
        return _userFromFirebaseUser(user);
      }catch(e){
        print(e.toString());
        return null;

      }
    }




  //sign out




}