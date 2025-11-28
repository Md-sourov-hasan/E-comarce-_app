import 'package:flutter/material.dart';

class SafetyCenter extends StatelessWidget {
  const SafetyCenter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: const Text("safety Center"),
      ),
      body: const Center(
        child: Text("Welcome to safety Center!"),
      ),
    );
  }
}