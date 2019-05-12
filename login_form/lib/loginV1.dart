import 'package:flutter/material.dart';
import 'dart:io';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Form',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
         padding: EdgeInsets.fromLTRB(20, 120, 20, 120),
         child:Column(
           children: <Widget>[
             Hero(
                 tag: 'heoro',
                 child: CircleAvatar(
                   child: Image.asset('images/logo.jpg'),
                   backgroundColor: Colors.transparent,
                   radius: 58.0, //unit: logical pixel?
                 )
             ),
             SizedBox(height: 45.0),
             TextFormField(
               keyboardType: TextInputType.emailAddress,
               initialValue: 'your_name@gmail.com',
               decoration: InputDecoration(
                   border: OutlineInputBorder()
               ),
             ),
             SizedBox(height: 15.0),
             TextFormField(
               initialValue: 'input password',
               obscureText: true,
               decoration: InputDecoration(
                   border: OutlineInputBorder()
               ),
             ),
             SizedBox(height: 10.0),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
                 RaisedButton(
                   child: Text('Log In'),
                   onPressed: () { } ,
                 ),
                 SizedBox(width: 10.0),
                 RaisedButton(
                   child: Text('Cancel'),
                   onPressed: () { exit(0); } ,
                 ),
               ],
             ),
           ],
         ),  
        )
      )
    );
  }
}

