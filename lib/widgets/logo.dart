import 'package:flutter/material.dart';

class MyLogo extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height:100,
      color:Colors.blueGrey,
      alignment: Alignment.bottomCenter,
      child: Icon(Icons.account_circle,color: Colors.orange,size: 90,),
    );
  }
}
