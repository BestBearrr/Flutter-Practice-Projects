// Tap anywhere on the screen!
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int numberOfTimesTapped = 0;

  void _increaseNumberTapped() {
    setState(() {
      numberOfTimesTapped++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _increaseNumberTapped,
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        body: Center(
          child: Text(
            'Tapped $numberOfTimesTapped times',
            style: const TextStyle(fontSize: 30),
          ),
        ),
      ),
    );
  }
}
