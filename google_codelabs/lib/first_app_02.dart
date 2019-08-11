import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() {
  final WordPair wordPair = WordPair.random();
  print(">>> " + wordPair.asPascalCase);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final WordPair wordPair = WordPair.random();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Welcome to Flutter',
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Welcome to Flutter'),
          ),
          body: Center(
            //child: const Text('Hello World'),
            child: Text(wordPair.asPascalCase),
          ),
        ));
  }
}