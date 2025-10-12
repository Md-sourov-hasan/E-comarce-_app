import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/controller/auth_controller.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AuthController());

    return Scaffold(
      backgroundColor: const Color(0xFFF5F6FA),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              Center(
                child: Column(
                  children: const [
                    Icon(Icons.person_add_alt_1,
                        size: 80, color: Colors.deepPurple),
                    SizedBox(height: 10),
                    Text(
                      "Create Account ✨",
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Fill the form to get started",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 35),

              // User Name
              _buildTextField(
                controller: controller.nameController,
                hintText: 'User Name',
                icon: Icons.person_outline,
              ),

              const SizedBox(height: 15),

              // Email
              _buildTextField(
                controller: controller.emailController,
                hintText: 'Email',
                icon: Icons.email_outlined,
              ),

              const SizedBox(height: 15),

              // Phone
              _buildTextField(
                controller: controller.phoneController,
                hintText: 'Phone Number',
                icon: Icons.phone_outlined,
                keyboardType: TextInputType.phone,
              ),

              const SizedBox(height: 15),

              // Password
              _buildTextField(
                controller: controller.passwordController,
                hintText: 'Password',
                icon: Icons.lock_outline,
                obscureText: true,
              ),

              const SizedBox(height: 15),

              // Confirm Password
              _buildTextField(
                controller: controller.confirmPasswordController,
                hintText: 'Confirm Password',
                icon: Icons.lock_person_outlined,
                obscureText: true,
              ),

              const SizedBox(height: 25),

              // Register Button
              Obx(() {
                return SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      elevation: 5,
                    ),
                    onPressed: () {
                      controller.register();
                    },
                    child: const Text(
                      "Register",
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                  ),
                );
              }),

              const SizedBox(height: 20),

              // Go back to login
              Center(
                child: TextButton(
                  onPressed: () => Get.back(),
                  child: const Text(
                    "Already have an account? Login",
                    style: TextStyle(
                      color: Colors.deepPurple,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Custom TextField Widget
  Widget _buildTextField({
    required TextEditingController controller,
    required String hintText,
    IconData? icon,
    bool obscureText = false,
    TextInputType keyboardType = TextInputType.text,
  }) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        prefixIcon: Icon(icon, color: Colors.deepPurple),
        hintText: hintText,
        filled: true,
        fillColor: Colors.white,
        contentPadding:
            const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
