import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: TxtBtn(
                  onTap: () {
                    final player = AudioCache();
                    player.play('assets_note1.wav');
                  },
                  decoration: const BoxDecoration(
                    color: Colors.red,
                  ),
                ),
              ),
              Expanded(
                child: TxtBtn(
                  onTap: () {
                    final player = AudioCache();
                    player.play('assets_note2.wav');
                  },
                  decoration: const BoxDecoration(
                    color: Colors.orange,
                  ),
                ),
              ),
              Expanded(
                child: TxtBtn(
                  onTap: () {
                    final player = AudioCache();
                    player.play('assets_note3.wav');
                  },
                  decoration: const BoxDecoration(
                    color: Colors.yellow,
                  ),
                ),
              ),
              Expanded(
                child: TxtBtn(
                  onTap: () {
                    final player = AudioCache();
                    player.play('assets_note4.wav');
                  },
                  decoration: const BoxDecoration(
                    color: Colors.green,
                  ),
                ),
              ),
              Expanded(
                child: TxtBtn(
                  onTap: () {
                    final player = AudioCache();
                    player.play('assets_note5.wav');
                  },
                  decoration: const BoxDecoration(
                    color: Colors.teal,
                  ),
                ),
              ),
              Expanded(
                child: TxtBtn(
                  onTap: () {
                    final player = AudioCache();
                    player.play('assets_note6.wav');
                  },
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                  ),
                ),
              ),
              Expanded(
                child: TxtBtn(
                  onTap: () {
                    final player = AudioCache();
                    player.play('assets_note7.wav');
                  },
                  decoration: const BoxDecoration(
                    color: Colors.purple,
                  ),
                ),
              ),
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
      this.width = 250,
      this.height = 50,
      this.decoration,
      this.child})
      : super(key: key);

  final void Function()? onTap;
  final double width;
  final double height;
  final Decoration? decoration;
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
