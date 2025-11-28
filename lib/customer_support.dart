import 'package:flutter/material.dart';

class CustomerSupport extends StatelessWidget {
  const CustomerSupport({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: const Text("customer Support"),
      ),
      body: const Center(
        child: Text("Welcome to customer Support!"),
      ),
    );
  }
}