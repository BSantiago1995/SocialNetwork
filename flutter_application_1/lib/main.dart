import 'package:flutter/material.dart';
import 'package:flutter_application_1/User/UI/Screem/Home.dart';


///BRYAN SANTIAGO ORTIZ SILVA -- 4TO DESARROLLO
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
        
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar( 
          title: Text("Login")
          ),
        body: Stack(
          children: [
             Home()
            
            ],
        ),
        
    )
    );
  }
}



/*import 'package:flutter/material.dart';
import 'package:flutter_application_1/User/BLOC/BLOC_user.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      child: 
      MaterialApp(
      
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
     // home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
    ,
     bloc:UserBloc ,);
    
  }
}*/
