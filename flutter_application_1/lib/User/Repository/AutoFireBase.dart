import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AutFireBase{
  final FirebaseAuth auth= FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = GoogleSignIn();

Future<UserCredential> singIn() async{
 
  GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
  GoogleSignInAuthentication gSA= await googleSignInAccount.authentication;

  UserCredential user = await auth.signInWithCredential(GoogleAuthProvider.credential(
    idToken: gSA.idToken,
    accessToken: gSA.accessToken));
    return user;
}
}