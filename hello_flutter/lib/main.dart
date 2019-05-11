import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello Flutter', //app name
      home: Scaffold(
        appBar: AppBar(title: Text('Hello Flutter!!')), //title bar
        body: Center(child: Text('Let\'s get it Flutter')) //content
      ),
    );
  }
}