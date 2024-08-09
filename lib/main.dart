import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void playSound(int number) async {
  final player = AudioPlayer();
  await player.play(
    AssetSource("note$number.wav"),
  );
}

Expanded buildKey({required Color color,required int number}) {
  return
  Expanded(
    child: TextButton(
        onPressed: () {
          playSound(number);
        },
        child: Container(color: color)),
  );
}

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.red,number: 1),
              buildKey(color: Colors.orange,number: 2),
              buildKey(color: Colors.yellow,number: 3),
              buildKey(color: Colors.green,number: 4),
              buildKey(color: Colors.blue,number: 5),
              buildKey(color: Colors.purple,number: 6),
            ],
          ),
        ),
      ),
    );
  }
}
