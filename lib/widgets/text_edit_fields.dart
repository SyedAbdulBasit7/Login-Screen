import 'package:flutter/material.dart';
import './fancy_button.dart';
import '../widgets/checkbox.dart';
import '../screen/signup_page.dart';

class TextEditFields extends StatefulWidget {
  @override
  _TextEditFieldsState createState() => _TextEditFieldsState();
}

class _TextEditFieldsState extends State<TextEditFields> {
  bool _isHidden = true;
  void _toggleVisibility() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final _passwordFocusNode = FocusNode();
  
  void getFieldValues(BuildContext ctx) {
    if (emailController.text == 'syedspy1444@gmail.com' ||
        passwordController.text == '12345') {
      Navigator.of(ctx).push(MaterialPageRoute(
        builder: (_) {
          return Signup();
        },
      ));
    } else {
      Scaffold.of(ctx).showSnackBar(SnackBar(
        content: Text('Please see the code for email & password'),
        duration: Duration(seconds: 3),
        action: SnackBarAction(label: 'Jee', onPressed: (){}),
      ));
    }
  }

  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Card(
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: BorderSide(
            width: 2,
            color: Colors.orange,
          ),
        ),
        margin: EdgeInsets.only(top: 30),
        child: Container(
          padding: EdgeInsets.only(left: 10, top: 20, right: 10),
          height: 350,
          width: 350,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromRGBO(215, 118, 255, 1).withOpacity(0.5),
              Color.fromRGBO(255, 188, 117, 1).withOpacity(0.9),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0,1],
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: <Widget>[
              TextField(
                textInputAction: TextInputAction.next,
                style: TextStyle(
                    fontSize: 16, color: Colors.blueAccent, height: 1),
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.email,
                    color: Colors.blueAccent,
                  ),
                  labelText: 'Enter Email',
                  labelStyle: TextStyle(
                    fontSize: 16,
                    color: Colors.blueAccent,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                controller: emailController,
                onSubmitted: (_) {
                  FocusScope.of(context).requestFocus(_passwordFocusNode);
                },
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                obscureText: _isHidden,
                style: TextStyle(
                    fontSize: 16, color: Colors.blueAccent, height: 1),
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.blueAccent,
                  ),
                  suffixIcon: IconButton(
                    onPressed: _toggleVisibility,
                    color: Colors.blueAccent,
                    icon: _isHidden
                        ? Icon(Icons.visibility_off)
                        : Icon(Icons.visibility),
                  ),
                  labelText: 'Enter Password',
                  labelStyle: TextStyle(
                    fontSize: 16,
                    color: Colors.blueAccent,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                controller: passwordController,
                focusNode: _passwordFocusNode,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                MyCheckBox(),
                FlatButton(
                  onPressed: () {},
                  child: Text(
                    'Forget Password!',
                    style: TextStyle(fontSize: 12),
                  ),
                ),
              ]),
              SizedBox(
                height: 15,
              ),
              FancyButton(
                buttonText:'LOGIN',
                onPressed: () => getFieldValues(context),
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 10, right: 15),
                      child: Divider(
                        height: 10,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Text('or'),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 10, right: 15),
                      child: Divider(
                        height: 10,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
              FancyButton(
                buttonText:'SIGN UP',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
