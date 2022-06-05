import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('assets_note$soundNumber.wav');
  }

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
                    playSound(1);
                  },
                  decoration: const BoxDecoration(
                    color: Colors.red,
                  ),
                ),
              ),
              Expanded(
                child: TxtBtn(
                  onTap: () {
                    playSound(2);
                  },
                  decoration: const BoxDecoration(
                    color: Colors.orange,
                  ),
                ),
              ),
              Expanded(
                child: TxtBtn(
                  onTap: () {
                    playSound(3);
                  },
                  decoration: const BoxDecoration(
                    color: Colors.yellow,
                  ),
                ),
              ),
              Expanded(
                child: TxtBtn(
                  onTap: () {
                    playSound(4);
                  },
                  decoration: const BoxDecoration(
                    color: Colors.green,
                  ),
                ),
              ),
              Expanded(
                child: TxtBtn(
                  onTap: () {
                    playSound(5);
                  },
                  decoration: const BoxDecoration(
                    color: Colors.teal,
                  ),
                ),
              ),
              Expanded(
                child: TxtBtn(
                  onTap: () {
                    playSound(6);
                  },
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                  ),
                ),
              ),
              Expanded(
                child: TxtBtn(
                  onTap: () {
                    playSound(7);
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
