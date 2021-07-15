import 'package:flutter_application_1/User/Repository/autRepository.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserBloc implements Bloc{
    final autRepository = AutRepository();


    Future <UserCredential> singIn(){
      return autRepository.singInFirebase();
    }
  @override
  void dispose() {
    
  }

}
