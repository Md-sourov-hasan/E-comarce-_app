import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import 'package:my_app/views/auth/register/register.dart';
import 'package:my_app/views/home/home.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(padding: EdgeInsets.all(15),
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: 'Email'
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: 'Password'
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(onPressed: ()=>Get.to(()=>HomeView()), child:Text('Login'),),
           SizedBox(
            height: 10,
          ),
           ElevatedButton(onPressed: ()=>Get.to(()=>RegisterView()), child:Text('Register'),)
        ],
      ),
      ),
    );
  }
}