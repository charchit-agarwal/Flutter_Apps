import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('images/charchit.jpeg'),
            ),
            const Text(
              'Charchit Agarwal',
              style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white),
            ),
            Text(
              'Flutter Developer',
              style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  color: Colors.teal.shade100,
                  letterSpacing: 2.5,
                  fontSize: 20),
            ),
            SizedBox(
              height: 30,
              width: 200,
              child: Divider(
                color: Colors.teal[100],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
              padding: const EdgeInsets.all(10),
              color: Colors.white,
              child: Row(
                children: [
                  const Icon(
                    Icons.phone,
                    color: Colors.teal,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    '+91 9571040388',
                    style: TextStyle(
                        fontFamily: 'SourceSansPro',
                        color: Colors.teal.shade900,
                        fontSize: 15),
                  )
                ],
              ),
            ),
            Card(
              margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
              color: Colors.white,
              child: ListTile(
                leading: const Icon(
                  Icons.email,
                  color: Colors.teal,
                ),
                title: Text(
                  'charchit957@gmail.com',
                  style: TextStyle(
                      fontFamily: 'SourceSansPro',
                      color: Colors.teal.shade900,
                      fontSize: 15),
                ),
              ),
            )
          ],
        )),
      ),
    );
  }
}
