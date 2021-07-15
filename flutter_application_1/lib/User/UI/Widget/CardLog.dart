
import 'package:flutter/material.dart';
import 'package:flutter_application_1/User/UI/Widget/GradienteLog.dart';
import 'package:flutter_application_1/User/UI/Widget/ButtonInk.dart';
import 'package:flutter_application_1/User/UI/Widget/ImgSocial.dart';
//import 'package:flutter_application_1/User/UI/Widget/TextInput.dart';
import 'package:flutter_application_1/User/UI/Widget/Texto.dart';

class CardLog extends StatelessWidget {
  @override
  TextEditingController controller= TextEditingController(text: "");
  Widget build(BuildContext context) {
    final card = Stack(children: [
      GradienteLog(),
      Container(
        height: 550,
        width: 300,
        margin: EdgeInsets.only(top: 30, left: 60),
        decoration: BoxDecoration(
          color: Colors.black87,
          borderRadius: BorderRadius.circular(15.0),
        ),
      ),
      Container(
        height: 150,
        width: 150,
        margin: EdgeInsets.only(top: 40, left: 130),
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            alignment: Alignment.topCenter,
            image: AssetImage("assets/img/login.png"),
          ),
        ),
      ),
      Container(
        alignment: Alignment.topCenter,
        margin: EdgeInsets.only(top: 195),
        child: TextOri("Wellcome Back",30)
      ),
      Container(
        width: 250,
        margin: EdgeInsets.only(top: 270.0, left: 75),
        child: TextField(
          decoration: InputDecoration(
              
              border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
              hintText: 'Email or Phone Number',
              hintStyle: TextStyle(color: Colors.white, fontSize: 13)),
        ),
      ),
      Container(
        width: 250,
        margin: EdgeInsets.only(top: 325.0, left: 75),
        child: TextField(
          decoration: InputDecoration(
              border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
              hintText: 'Password',
              hintStyle: TextStyle(color: Colors.white, fontSize: 13)),
        ),
      ),
      
      //TextInput(hint: "Email or Phone Number",top1:270.0 ,left1: 75,inputType:TextInputType.emailAddress,maxlines: 10,controller:),
      //TextInput(hint: "Password",top1:325.0 ,left1: 75,inputType:TextInputType.emailAddress,maxlines: 10,controller:controller),
      Container(
        margin: EdgeInsets.only(top: 380, left: 220),
        child: TextOri("Recover Account?",12)
          
      ),
      Container(
        margin: EdgeInsets.only(left: 87),
        child: ButtonInk("Sing In", 405),
      ),
      Container(
        margin: EdgeInsets.only(top:445,left: 205),
        child: TextOri("Or",17)
      ),
      ImgSocial("assets/img/facebook.png",460,155),
      ImgSocial("assets/img/google.png",460,225),
      Container(
        margin: EdgeInsets.only(top:535,left: 85),
        child: TextOri("Don't Have Any Account? ",13)
      ),
    ]);
    return card;
  }
}
