import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int num) {
    final player = AudioCache(); // create a new play to play the local assets
    player.play("note$num.wav");
  }

  Expanded buildKey({int num, Color keyColor}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(num);
        },
        color: keyColor,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(num: 1, keyColor: Colors.red),
              buildKey(num: 2, keyColor: Colors.orange),
              buildKey(num: 3, keyColor: Colors.yellow),
              buildKey(num: 4, keyColor: Colors.green),
              buildKey(num: 5, keyColor: Colors.teal),
              buildKey(num: 6, keyColor: Colors.blue),
              buildKey(num: 7, keyColor: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
