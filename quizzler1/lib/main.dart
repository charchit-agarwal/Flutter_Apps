// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: const Scaffold(
        backgroundColor: Colors.grey,
        body: const SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Expanded(
          flex: 5,
          child: const Center(
            child: const Text('Here Question Comes'),
          ),
        ),
        Expanded(
          child: TextButton(
            onPressed: () {},
            child: const Text('True'),
            style: TextButton.styleFrom(backgroundColor: Colors.green),
          ),
        ),
        Expanded(
          child: TextButton(
            onPressed: () {},
            child: const Text('False'),
            style: TextButton.styleFrom(backgroundColor: Colors.red),
          ),
        ),
      ],
    );
  }
}