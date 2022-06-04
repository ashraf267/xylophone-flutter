import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Text(nouns.first),
        ),
      ),
    );
  }
}
