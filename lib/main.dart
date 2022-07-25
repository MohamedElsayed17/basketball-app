import 'package:flutter/material.dart';

import 'home_screen.dart';

void main() {
  runApp(const BasketBallApp());
}

class BasketBallApp extends StatelessWidget {
  const BasketBallApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("BasketBall App"),
          backgroundColor: Colors.orange,
        ),
        body: const HomeScreen(),
      ),
    );
  }
}
