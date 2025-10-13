import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final phoneController = TextEditingController();
  final otpController = TextEditingController();
  final nameController = TextEditingController();

  RxBool isLoading = false.obs;
  RxString verificationId = ''.obs;

  // ---------- EMAIL LOGIN ----------
  Future<void> loginWithEmail() async {
    if (emailController.text.isEmpty || passwordController.text.isEmpty) {
      Get.snackbar("Error", "Email and password are required");
      return;
    }

    try {
      isLoading.value = true;
      await _auth.signInWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );
      Get.offAllNamed('/home'); // Navigate to Home
    } on FirebaseAuthException catch (e) {
      Get.snackbar("Login Failed", e.message ?? "Unknown error");
    } finally {
      isLoading.value = false;
    }
  }

  // ---------- PHONE AUTH ----------
  void sendOTP() async {
    if (phoneController.text.isEmpty) {
      Get.snackbar("Error", "Enter your phone number");
      return;
    }

    String phone = phoneController.text.trim();
    if (!phone.startsWith('+')) phone = '+88$phone'; // Bangladesh country code

    isLoading.value = true;
    await _auth.verifyPhoneNumber(
      phoneNumber: phone,
      verificationCompleted: (PhoneAuthCredential credential) async {
        await _auth.signInWithCredential(credential);
        Get.offAllNamed('/home');
      },
      verificationFailed: (FirebaseAuthException e) {
        Get.snackbar("Error", e.message ?? "Verification failed");
        isLoading.value = false;
      },
      codeSent: (String verId, int? resendToken) {
        verificationId.value = verId;
        isLoading.value = false;
        Get.toNamed('/otp'); // Navigate to OTP screen
      },
      codeAutoRetrievalTimeout: (String verId) {
        verificationId.value = verId;
      },
    );
  }

  void verifyOTP() async {
    if (otpController.text.isEmpty) {
      Get.snackbar("Error", "Enter OTP");
      return;
    }

    try {
      isLoading.value = true;
      final credential = PhoneAuthProvider.credential(
        verificationId: verificationId.value,
        smsCode: otpController.text.trim(),
      );
      await _auth.signInWithCredential(credential);
      Get.offAllNamed('/home');
    } on FirebaseAuthException catch (e) {
      Get.snackbar("Error", e.message ?? "Invalid OTP");
    } finally {
      isLoading.value = false;
    }
  }

  // ---------- REGISTER ----------
  Future<void> register() async {
    if (emailController.text.isEmpty ||
        passwordController.text.isEmpty ||
        nameController.text.isEmpty) {
      Get.snackbar("Error", "All fields are required");
      return;
    }

    try {
      isLoading.value = true;
      await _auth.createUserWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );
      Get.snackbar("Success", "Account created successfully");
      Get.offAllNamed('/home');
    } on FirebaseAuthException catch (e) {
      Get.snackbar("Error", e.message ?? "Failed to register");
    } finally {
      isLoading.value = false;
    }
  }
}
