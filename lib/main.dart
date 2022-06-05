import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  // void playSound(int soundNumber) {
  //   final player = AudioCache();
  //   player.play('assets_note$soundNumber.wav');
  // }

  Widget buildKey(int soundNumber, Color? keyColor) {
    return Expanded(
      child: TxtBtn(
        onTap: () {
          final player = AudioCache();
          player.play('assets_note$soundNumber.wav');
        },
        decoration: BoxDecoration(
          color: keyColor,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              buildKey(1, Colors.red),
              buildKey(2, Colors.orange),
              buildKey(3, Colors.yellow),
              buildKey(4, Colors.green),
              buildKey(5, Colors.teal),
              buildKey(6, Colors.blue),
              buildKey(7, Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}

// My custom TextButton called TxtBtn
class TxtBtn extends StatelessWidget {
  const TxtBtn(
      {Key? key,
      required this.onTap,
      this.decoration,
      this.width,
      this.height,
      this.child})
      : super(key: key);

  final void Function()? onTap;
  final Decoration? decoration;
  final double? width;
  final double? height;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: decoration,
        constraints: BoxConstraints.expand(
          width: width,
          height: height,
        ),
        child: child,
      ),
    );
  }
}
