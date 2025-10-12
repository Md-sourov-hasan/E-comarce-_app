

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/controller/auth_controller.dart';
import 'package:my_app/views/auth/register/register.dart';
import 'package:my_app/views/home/home.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final controller =Get.put(AuthController());
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(padding: EdgeInsets.all(15),
      child: Form(
        key: controller.loginKey,
        child: Column(
          children: [
            TextFormField(
              controller: controller.emailController,
              validator:(Value){
                if(Value!.isEmpty){
                  return 'this field is emty';
                }
              },
              decoration: InputDecoration(
                hintText: 'Email'
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: controller.passwordController,
              validator:(Value){
                if(Value!.isEmpty){
                  return 'this field is emty';
                }
              },
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Password'
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Obx((){
              return ElevatedButton(onPressed: ()=> controller.login(), child:Text(controller.isLoading.value?'loading..':'Login'),);
            }),
             SizedBox(
              height: 10,
            ),
             ElevatedButton(onPressed: ()=>Get.to(()=>RegisterView()), child:Text('Register'),)
          ],
        ),
      ),
      ),
    );
  }
}