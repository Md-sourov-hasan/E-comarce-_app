import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.menu)),
        title: Text('Home'),
        centerTitle: false,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.notifications)),
          IconButton(onPressed: (){}, icon: Icon(Icons.shopping_bag_rounded)),
        ],
      ),
    );
  }
}