import 'package:flutter/material.dart';
import 'dart:io';
import 'home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Form',
      debugShowCheckedModeBanner: false,
      home: new LoginPage()
    );
  }
}

class LoginPage extends StatefulWidget {

  @override
  State createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void onLogin() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => HomePage(
          emailController.text,
          passwordController.text)),
    );
  }

  void onCancel() {
    print('onCancel()');
    exit(0);
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
             initialValue: null,
             decoration: InputDecoration(
                 border: OutlineInputBorder(),
                 hintText: 'Put your email',
             ),
             controller: emailController,
           ),
           SizedBox(height: 15.0),
           TextFormField(
             initialValue: null,
             obscureText: true,
             decoration: InputDecoration(
                 border: OutlineInputBorder(),
                 hintText: 'Put your password',
             ),
             controller: passwordController,
           ),
           SizedBox(height: 10.0),
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[
               RaisedButton(
                 child: Text('Log In'),
                 onPressed: () => onLogin() ,
               ),
               SizedBox(width: 10.0),
               RaisedButton(
                 child: Text('Cancel'),
                 onPressed: () => onCancel() ,
               ),
             ],
           ),
         ],
       ),
      )
    );
  }
}



