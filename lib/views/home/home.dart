import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get/state_manager.dart';
import 'package:my_app/views/cart.dart';
import 'package:my_app/views/home/sections/category_section.dart';
import 'package:my_app/views/home/sections/products_section.dart';
import 'package:my_app/views/home/sections/slider_section.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.menu)),
        title: Text('Home'),
        centerTitle: false,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.notifications)),
          IconButton(onPressed: (){
            Get.to(()=>CartView());
          }, icon: Icon(Icons.shopping_cart_rounded)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CategorySection(),
            SizedBox(height: 30,),
            SliderSection(),
            ProductsSection(),
            
          ],
        ),
      ),
    );
  }
}