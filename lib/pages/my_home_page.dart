import 'dart:math';

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int randomNumber = 0;
  DateTime currentTime = DateTime.now();
  @override
  Widget build(BuildContext context) {
    print("Build...");
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Random Number: $randomNumber",
            style: const TextStyle(fontSize: 30),
          ),
          const SizedBox(height: 15),
          Text(
            "Current Time: $currentTime",
            style: const TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 15),
          Center(
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  randomNumber = Random().nextInt(11);
                  currentTime = DateTime.now();
                });
              },
              child: const Text('Click Me'),
            ),
          ),
        ],
      ),
    );
  }
}
