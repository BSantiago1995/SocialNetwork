import 'package:flutter/material.dart';
import 'package:flutter_application_1/User/BLOC/BLOC_user.dart';
//import 'package:flutter_application_1/User/UI/Screem/Home.dart';
import 'package:flutter_application_1/User/UI/Screem/Profile.dart';
import 'package:flutter_application_1/User/UI/Widget/SocialButton.dart';
import 'package:flutter_application_1/User/UI/Widget/TextInput.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Login extends StatelessWidget{
  UserBloc blocUser;
  final _controllerUserName=TextEditingController(); //_ antes define el scope o identifica como private para el evento unico, es de dart mas no flutter
  final _controllerPassword=TextEditingController();
  
  @override
  Widget build(BuildContext context){
    blocUser = BlocProvider.of(context);
    return _controlSession();
  }
  Widget _controlSession(){
    return StreamBuilder(
      stream: blocUser.authStatus,
      builder: (
        BuildContext context,
        AsyncSnapshot snapshot
      ){
        if(!snapshot.hasData || snapshot.hasError){
            return loginApp();
        }else{
          return Profile();
        }
      }
      );
  }
  Widget loginApp() {
    return Scaffold(
      body:Container(
        child: ListView(
          children: <Widget>[
            Container(
              height: 200.0,
              width: 200.0,
              margin: EdgeInsets.only(top:15.0),
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.contain,
                  image:AssetImage("assets/img/cam.png"), 
                ),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                shape: BoxShape.rectangle
              ),
            ),//Logo
          Container(
            height: 40.0,
            margin: EdgeInsets.only(top: 15.0),
            child: Text("Nombre App",textAlign: TextAlign.center,style: TextStyle(color: Colors.black45,fontSize: 25.0),),
          ),//Name app
          Container(
            margin: EdgeInsets.only(top: 15.0),
            child: TextInput(hint: "Username", inputType: TextInputType.name, controller: _controllerUserName,maxlines:1),
          ),//Name
          Container(
            margin: EdgeInsets.only(top: 15.0),
            child: TextInput(hint:"Password", inputType: TextInputType.text, controller: _controllerPassword,maxlines: 1),
          ),//Hobbies
          Container(
             margin: EdgeInsets.only(top: 20.0),
            child: Center(
              child: MaterialButton(
                minWidth: 100.0,
                height: 40.0,
                onPressed: (){},//conexion base de datos
                color: Colors.blueAccent,
                child: Text('Submit',style: TextStyle(fontSize: 15.0,color: Colors.white),),              
              ),
            ),
          ),
          SocialButton(textc: "Login with Google",onPressed:(){blocUser.singIn().then((UserCredential user)=> print("Usted se ha autenticado como ${user.user}"));} ,widthc: 30,heigthc: 35,)
          ],
        ),
      )
    );
  }
  
} 
//cake tool buscar 