import 'package:flutter/material.dart';

class AllStore extends StatelessWidget {
  const AllStore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: const Text("All Store"),
      ),
      body: const Center(
        child: Text("Welcome to All Store!"),
      ),
    );
  }
}