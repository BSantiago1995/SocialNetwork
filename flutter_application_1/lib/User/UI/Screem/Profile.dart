import 'package:flutter/material.dart';
import 'package:flutter_application_1/User/UI/Widget/TextInput.dart';
class Profile extends StatelessWidget{
  final _controllerName=TextEditingController(); //_ antes define el scope o identifica como private para el evento unico, es de dart mas no flutter
  final _controllerHobbies=TextEditingController();
  
  @override
  Widget build(BuildContext context) {
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
            ),//foto
          Container(
            height: 40.0,
            margin: EdgeInsets.only(top: 15.0),
            child: Text("Profile",textAlign: TextAlign.center,style: TextStyle(color: Colors.black45,fontSize: 25.0),),
          ),//camera
          Container(
            margin: EdgeInsets.only(top: 15.0),
            child: TextInput(hint: "Name", inputType: TextInputType.name, controller: _controllerName,maxlines:1),
          ),//Name
          Container(
            margin: EdgeInsets.only(top: 15.0),
            child: TextInput(hint:"Hobbies and Interests", inputType: TextInputType.text, controller: _controllerHobbies,maxlines: 6),
          ),//Hobbies
          Container(
             margin: EdgeInsets.only(top: 20.0),
            child: Center(
              child: MaterialButton(
                minWidth: 100.0,
                height: 40.0,
                onPressed: (){},//conexion base de datos
                color: Colors.blueAccent,
                child: Text('Save',style: TextStyle(fontSize: 15.0,color: Colors.white),),              
              ),
            ),
          )
          ],
        ),
      )
    );
  }
  
} 
//cake tool buscar 