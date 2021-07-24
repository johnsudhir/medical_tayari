import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:medical_tayari/paper_collection/Collections.dart';


GoogleSignIn googleSignIn = GoogleSignIn(
  scopes: [
    'https://www.googleapis.com/auth/gmail.readonly',
    'https://www.googleapis.com/auth/gmail.send',
  ],
);
final FirebaseAuth auth = FirebaseAuth.instance;
CollectionReference users = FirebaseFirestore.instance.collection('users');

Future<void> signInWithGoogle(BuildContext context) async{
  try {
    final GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();

    if(googleSignInAccount!= null){
      GoogleSignInAuthentication googleSignInAuthentication = await
      googleSignInAccount.authentication;

      //credential gives everything needed about user
      AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );

      final UserCredential authResult = await
      auth.signInWithCredential(credential);

      final User? user = authResult.user;
      var userData = {
        'name': googleSignInAccount.displayName,
        'provider': 'google',
        'photoUrl': googleSignInAccount.photoUrl,
        'email': googleSignInAccount.email,
      };
      users.doc(user!.uid).get().then((doc) {

        if(doc.exists){
          //old user logged in
          doc.reference.update(userData);
          Navigator.pushReplacementNamed(context, Collections.collection);
        }
        else{
          //new user logged in
          users.doc(user.uid).set(userData);
          Navigator.pushReplacementNamed(context, Collections.collection);
        }
      }
      );

    }
  }
  catch(PlatformException){
    print(PlatformException);
  }
}