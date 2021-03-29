import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void playSound(int sN) {
    AudioCache player = AudioCache();
    player.play('note$sN.wav');
  }

  Expanded buildKey({Color color, int sN}) {
    return Expanded(
      child: RaisedButton(
        color: color,
        onPressed: () {
          playSound(sN);
        },
        child: null,
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
                buildKey(color: Colors.purple, sN: 1),
                buildKey(color: Colors.blue, sN: 2),
                buildKey(color: Colors.teal, sN: 3),
                buildKey(color: Colors.green, sN: 4),
                buildKey(color: Colors.yellow, sN: 5),
                buildKey(color: Colors.orange, sN: 6),
                buildKey(color: Colors.red, sN: 7),
              ]
              // Expanded(
              //   child: FlatButton(
              //     color: Colors.yellow,
              //     onPressed: () {
              //       playSound(2);
              //     },
              //     child: null,
              //   ),
              // ),
              // Expanded(
              //   child: FlatButton(
              //     color: Colors.green,
              //     onPressed: () {
              //       playSound(3);
              //     },
              //     child: null,
              //   ),
              // ),
              // Expanded(
              //   child: FlatButton(
              //     color: Colors.blue,
              //     onPressed: () {
              //       playSound(4);
              //     },
              //     child: null,
              //   ),
              // ),
              // Expanded(
              //   child: FlatButton(
              //     color: Colors.orange,
              //     onPressed: () {
              //       playSound(5);
              //     },
              //     child: null,
              //   ),
              // ),
              // Expanded(
              //   child: FlatButton(
              //     color: Colors.teal,
              //     onPressed: () {
              //       playSound(6);
              //     },
              //     child: null,
              //   ),
              // ),
              // Expanded(
              //   child: FlatButton(
              //     color: Colors.red,
              //     onPressed: () {
              //       playSound(7);
              //     },
              //     child: null,
              //   ),
              // ),

              ),
        ),
      ),
    );
  }
}
