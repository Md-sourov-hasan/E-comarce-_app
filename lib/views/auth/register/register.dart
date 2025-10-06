import 'package:flutter/material.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
      ),
      body: Padding(padding: EdgeInsets.all(15),
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: 'User Name'
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            decoration: InputDecoration(
              hintText: 'Email'
            ),
          ),
          SizedBox(
            height: 10,
          ),
           TextField(
            decoration: InputDecoration(
              hintText: 'Phone Number'
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
           SizedBox(
            height: 10,
          ),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: 'Confirm Password'
            ),
          ),
           SizedBox(
            height: 10,
          ),
          ElevatedButton(onPressed: (){}, child:Text('Register'),)
        ],
      ),
      ),
    );
  }
}