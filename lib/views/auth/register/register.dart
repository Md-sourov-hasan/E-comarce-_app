import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';
import 'package:my_app/controller/auth_controller.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {

    final controller=Get.put(AuthController());
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
      ),
      body: Padding(padding: EdgeInsets.all(15),
      child: Column(
        children: [
          TextField(
            controller: controller.nameController,
            decoration: InputDecoration(
              hintText: 'User Name'
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            controller: controller.emailController,
            decoration: InputDecoration(
              hintText: 'Email'
            ),
          ),
          SizedBox(
            height: 10,
          ),
           TextField(
            controller: controller.phoneController,
            decoration: InputDecoration(
              hintText: 'Phone Number'
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            controller: controller.passwordController,
            obscureText: true,
            decoration: InputDecoration(
              hintText: 'Password'
            ),
          ),
          SizedBox(
            height: 10,
          ),
           SizedBox(
            height: 10,
          ),
          TextField(
            controller: controller.confirmPasswordController,
            obscureText: true,
            decoration: InputDecoration(
              hintText: 'Confirm Password'
            ),
          ),
           SizedBox(
            height: 10,
          ),
          ElevatedButton(onPressed: (){
            controller.register();
          }, child:Text('Register'),)
        ],
      ),
      ),
    );
  }
}