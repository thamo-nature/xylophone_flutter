import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  void playSound(int noteNo) {
    final player = AudioPlayer();
    player.play(AssetSource('../note$noteNo.wav'));
  }

  //takes two arguments color and note no
  buildMusicBoard({Color color = Colors.red, int noteValue = 1}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          fixedSize: const Size(double.infinity, 30.0),
          backgroundColor: color,
        ),
        onPressed: () {
          playSound(noteValue);
        },
        child: Text('Note $noteValue'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildMusicBoard(color: Colors.black, noteValue: 1),
              buildMusicBoard(color: Colors.green, noteValue: 2),
              buildMusicBoard(color: Colors.blue, noteValue: 3),
              buildMusicBoard(color: Colors.red, noteValue: 4),
              buildMusicBoard(color: Colors.yellow, noteValue: 5),
              buildMusicBoard(color: Colors.pink, noteValue: 6),
              buildMusicBoard(color: Colors.teal, noteValue: 7),
            ],
          ),
        ),
      ),
    );
  }
}
