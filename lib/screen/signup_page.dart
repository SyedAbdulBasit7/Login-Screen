import 'package:flutter/material.dart';
import '../widgets/signup_form.dart';

class Signup extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up"),
      ),
      body: Align(
        alignment: Alignment.center,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(),
              color: Colors.greenAccent[100]),
          width: 300,
          height: 400,
          padding: EdgeInsets.all(6),
          margin: EdgeInsets.all(10),
          child: Card(elevation: 8, child: SignupForm()),
        ),
      ),
    );
  }
}
