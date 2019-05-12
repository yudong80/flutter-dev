import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage(this._email, this._password);

  final _email;
  final _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(100.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Welcome to Home Page'),
            SizedBox(height: 20,),
            Text('- Email : $_email'),
            SizedBox(height: 10,),
            Text('- Password : $_password'),
          ],
        )
      )
    );
  }
}