import 'package:flutter/material.dart';

class EggClub extends StatelessWidget {
  const EggClub({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: const Text("Egg Club"),
      ),
      body: const Center(
        child: Text("Welcome to Egg Club!"),
      ),
    );
  }
}