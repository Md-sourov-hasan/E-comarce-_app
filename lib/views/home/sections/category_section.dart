import 'package:flutter/material.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          Row(
            children: [
              Text('categories',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
              )
            ],
          )
        ],
      ),
    );
  }
}