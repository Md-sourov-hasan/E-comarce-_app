import 'package:flutter/material.dart';

class LiveChat extends StatelessWidget {
  const LiveChat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: const Text("live Chat"),
      ),
      body: const Center(
        child: Text("Welcome to live Chat!"),
      ),
    );
  }
}