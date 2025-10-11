import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';
import 'package:my_app/views/home/home.dart';

class AuthController  extends GetxController{
  final _auth = FirebaseAuth.instance;
  final _fireStore= FirebaseFirestore.instance;
  final loginKey = GlobalKey<FormState>();
  RxBool isLoading = false.obs;
final emailController =TextEditingController();
final passwordController = TextEditingController();
final nameController =TextEditingController();
final phoneController = TextEditingController();
final confirmPasswordController = TextEditingController();
  void login () async{
    if(loginKey.currentState!.validate()){
      isLoading.value=true;
      try{
        await _auth.signInWithEmailAndPassword(
          email: emailController.text,
           password: passwordController.text,
           );
           Get.offAll(()=>HomeView());
      }on FirebaseAuthException catch (error){
        Get.snackbar('Error', error.message!);
      } catch (e){
        print(e);
      } finally{
       isLoading.value= false;
      }
    }
  }
  void register () async{
    if(loginKey.currentState!.validate()){
      isLoading.value=true;
      try{
       await _auth.createUserWithEmailAndPassword(
          email: emailController.text,
           password: passwordController.text,
           ).then((user)async{
           await _fireStore.collection('users').doc(emailController.text).set({
              'name':nameController.text,
              'phone':phoneController.text,
              'email':emailController.text,
              'password':passwordController.text,
            });
           });
           Get.snackbar('Succes', 'Your account have been created');
           Get.offAll(()=>HomeView());
      }on FirebaseAuthException catch (error){
        Get.snackbar('Error', error.message!);
      } catch (e){
        print(e);
      } finally{
       isLoading.value= false;
      }
    }
  }
} 