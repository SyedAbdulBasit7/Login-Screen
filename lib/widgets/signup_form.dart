import 'package:flutter/material.dart';
import './fancy_button.dart';
import '../screen/users_list.dart';

class SignupForm extends StatefulWidget {
  @override
  _SignupFormState createState() => _SignupFormState();
}

//name,email,password,confirm password, picture
class _SignupFormState extends State<SignupForm> {
  final _emailFocus = FocusNode();
  final _passwordFocus = FocusNode();
  final _confirmPasswordFocus = FocusNode();

  void goToListUser(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return UsersList();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: ListView(children: <Widget>[
        TextFormField(
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
            labelText: 'Name',
            prefixIcon: Icon(Icons.accessibility),
          ),
          onFieldSubmitted: (_) {
            FocusScope.of(context).requestFocus(_emailFocus);
          },
        ),
        SizedBox(
          height: 4,
        ),
        TextFormField(
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
            labelText: 'Email',
            prefixIcon: Icon(Icons.email),
          ),
          onFieldSubmitted: (_) {
            FocusScope.of(context).requestFocus(_passwordFocus);
          },
          focusNode: _emailFocus,
        ),
        SizedBox(
          height: 4,
        ),
        TextFormField(
          obscureText: true,
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
            labelText: 'Password',
            prefixIcon: Icon(Icons.lock),
          ),
          onFieldSubmitted: (_) {
            FocusScope.of(context).requestFocus(_confirmPasswordFocus);
          },
          focusNode: _passwordFocus,
        ),
        SizedBox(
          height: 4,
        ),
        TextFormField(
          obscureText: true,
          decoration: InputDecoration(
            labelText: 'Confirm Password',
            prefixIcon: Icon(Icons.lock),
          ),
          focusNode: _confirmPasswordFocus,
        ),
        SizedBox(
          height: 20,
        ),
        FancyButton(
          buttonText: 'Sign Up',
          onPressed: () => goToListUser(context),
        ),

        // TextFormField(),
      ]),
    );
  }
}
