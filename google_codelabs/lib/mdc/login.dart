import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: ListView(
      padding: EdgeInsets.symmetric(horizontal: 24.0),
      children: <Widget>[
        SizedBox(height: 80.0),
        Column(
          children: <Widget>[
            Image.asset('assets/diamond.png'),
            SizedBox(height: 16.0),
            Text('SHRINE'),
          ],
        ),
        SizedBox(height: 120.0),
        TextField(
          decoration: InputDecoration(
            filled: true,
            labelText: 'Username',
          ),
          controller: _usernameController,
        ),
        SizedBox(height: 12.0),
        TextField(
          decoration: InputDecoration(
            filled: true,
            labelText: 'Password',
          ),
          obscureText: true,
          controller: _passwordController,
        ),
        ButtonBar(
          children: <Widget>[
            FlatButton(
              child: Text('CANCEL'),
              onPressed: () {
                _usernameController.clear();
                _passwordController.clear();
              },
            ),
            RaisedButton(
              child: Text('NEXT'),
              onPressed: () {
                Navigator.pop(context);
              },
            )
          ],
        )
      ],
    )));
  }
}
