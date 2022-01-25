import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: const Text('Dicee'),
        backgroundColor: Colors.red,
      ),
      body: const DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftImage = 1;
  int rightImage = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: RawMaterialButton(
            padding: const EdgeInsets.all(16),
            onPressed: () {
              changeDiceNumber();
            },
            child: Image.asset('images/dice$leftImage.png'),
          )),
          Expanded(
              child: RawMaterialButton(
                  padding: const EdgeInsets.all(16),
                  onPressed: () {
                    changeDiceNumber();
                  },
                  child: Image.asset('images/dice$rightImage.png'))),
        ],
      ),
    );
  }

  void changeDiceNumber() {
    setState(() {
      leftImage = Random().nextInt(6) + 1;
      rightImage = Random().nextInt(6) + 1;
    });
  }
}
