import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey(color, soundName, child) {
    return Expanded(
      // ignore: deprecated_member_use
      child: FlatButton(
        onPressed: () {
          playSound(soundName);
        },
        child: child,
        color: color,
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
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(
                Colors.red,
                1,
                Text('Do'),
              ),
              buildKey(
                Colors.teal,
                2,
                Text('Reh'),
              ),
              buildKey(
                Colors.orange,
                3,
                Text('Mi'),
              ),
              buildKey(
                Colors.green,
                4,
                Text('Fah'),
              ),
              buildKey(
                Colors.brown,
                5,
                Text('Soh'),
              ),
              buildKey(
                Colors.pink,
                6,
                Text('Lah'),
              ),
              buildKey(
                Colors.grey,
                7,
                Text('Ti'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
