import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  void playSound(int i) {
    final audioPlayer = AudioCache();
    audioPlayer.play('note$i.wav');
  }

  Expanded buildButton(int n, Color colour) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(n);
        },
        style: TextButton.styleFrom(
          backgroundColor: colour,
        ),
        child: const Text(
          '',
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildButton(1, Colors.red),
              buildButton(2, Colors.orange),
              buildButton(3, Colors.yellow),
              buildButton(4, Colors.green),
              buildButton(5, Colors.blue),
              buildButton(6, Colors.indigo),
              buildButton(7, Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}