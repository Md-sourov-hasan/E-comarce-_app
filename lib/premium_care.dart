import 'package:flutter/material.dart';

class PremiumCare extends StatelessWidget {
  const PremiumCare({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: const Text("premium Care"),
      ),
      body: const Center(
        child: Text("Welcome to premium Care!"),
      ),
    );
  }
}