import 'package:flutter_application_1/User/Repository/autRepository.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserBloc implements Bloc{
    final autRepository = AutRepository();

  Stream<User> streamFirebase = FirebaseAuth.instance.authStateChanges(); // declaracion del stream
  Stream <User> get authStatus => streamFirebase; //funcion arrow que conecta al stream

    Future <UserCredential> singIn(){
      return autRepository.singInFirebase();
    }
  @override
  void dispose() {
    
  }

}
