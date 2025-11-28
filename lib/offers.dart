import 'package:flutter/material.dart';

class Offers extends StatelessWidget {
  const Offers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: const Text("offers"),
      ),
      body: const Center(
        child: Text("Welcome to offers!"),
      ),
    );
  }
}