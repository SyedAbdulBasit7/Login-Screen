import 'package:flutter/material.dart';

class MyCheckBox extends StatefulWidget {
  @override
  _MyCheckBoxState createState() => _MyCheckBoxState();
}

class _MyCheckBoxState extends State<MyCheckBox> {
  bool _checked = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width:200,
      padding: EdgeInsets.all(0),     
      child: CheckboxListTile(
        title: Text(
          'Remember me!',
          style: TextStyle(fontSize: 12),
        ),       
        
        activeColor: Colors.black,
        checkColor: Colors.blueAccent,
        controlAffinity: ListTileControlAffinity.leading,        
        value: _checked,
        onChanged: (bool value) {
          setState(() {
            _checked = value;
          });
        },
      ),
    );
  }
}
