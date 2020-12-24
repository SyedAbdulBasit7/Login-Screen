import 'package:flutter/material.dart';
import '../widgets/text_edit_fields.dart';
import '../widgets/logo.dart';

class LoginPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Practice')),
      body: Container(
        color:Colors.blueGrey,
        child: ListView(
          children: [
          // ButtonLogin(),
          MyLogo(),
          TextEditFields(),
        ]),
      ),
    );
  }
}
