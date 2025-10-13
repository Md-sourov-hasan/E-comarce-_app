import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/controller/auth_controller.dart';
import 'package:my_app/views/auth/register/register.dart';
import 'package:my_app/views/home/home.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final AuthController controller = Get.put(AuthController());
  bool isPhoneLogin = false; // toggle between email and phone

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Obx(() => SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Toggle between Email / Phone
              Row(
                children: [
                  ChoiceChip(
                    label: const Text("Email Login"),
                    selected: !isPhoneLogin,
                    onSelected: (v) => setState(() => isPhoneLogin = false),
                  ),
                  const SizedBox(width: 10),
                  ChoiceChip(
                    label: const Text("Phone Login"),
                    selected: isPhoneLogin,
                    onSelected: (v) => setState(() => isPhoneLogin = true),
                  ),
                ],
              ),
              const SizedBox(height: 30),

              // ----------- EMAIL LOGIN ----------- 
              if (!isPhoneLogin) ...[
                TextField(
                  controller: controller.emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    labelText: "Email",
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 15),
                TextField(
                  controller: controller.passwordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: "Password",
                    prefixIcon: Icon(Icons.lock),
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: controller.isLoading.value
                        ? null
                        : () async {
                            await controller.loginWithEmail();
                            // check if user is logged in
                            if (controller.isLoading()) {
                              Get.offAll(() => HomeView());
                            }
                          },
                    child: controller.isLoading.value
                        ? const CircularProgressIndicator(color: Colors.white)
                        : const Text("Login with Email"),
                  ),
                ),
              ],

              // ----------- PHONE LOGIN ----------- 
              if (isPhoneLogin) ...[
                TextField(
                  controller: controller.phoneController,
                  keyboardType: TextInputType.phone,
                  decoration: const InputDecoration(
                    labelText: "Phone Number",
                    hintText: "+8801XXXXXXXXX",
                    prefixIcon: Icon(Icons.phone),
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: controller.isLoading.value
                        ? null
                        : () => controller.sendOTP(),
                    child: controller.isLoading.value
                        ? const CircularProgressIndicator(color: Colors.white)
                        : const Text("Send OTP"),
                  ),
                ),
              ],

              const SizedBox(height: 30),
              Center(
                child: TextButton(
                  onPressed: () {
                    Get.to(() => RegisterView());
                  },
                  child: const Text(
                    "Don't have an account? Register",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
