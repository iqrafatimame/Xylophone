import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int n) {
    final player = AudioCache();
    player.play('note$n.wav');
  }

  Expanded buildKey(int number, Color color) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(number);
        },
        child: Text(
          '$number',
          style: TextStyle(
            fontSize: 25.0,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildKey(1, Colors.red),
                buildKey(2, Colors.orange),
                buildKey(3, Colors.yellow),
                buildKey(4, Colors.green),
                buildKey(5, Colors.lightGreen),
                buildKey(6, Colors.blue),
                buildKey(7, Colors.purple),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
