import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: const Center(child: Text('I am rich')),
        backgroundColor: Colors.blueGrey[900],
      ),
      body: const Center(
          child: Image(
        image: AssetImage('assets/diamond.png'),
      )),
    ),
  ));
}
