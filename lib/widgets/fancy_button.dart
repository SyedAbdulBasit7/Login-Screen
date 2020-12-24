import 'package:flutter/material.dart';

class FancyButton extends StatelessWidget {
  final GestureTapCallback onPressed;
  final String buttonText;

  FancyButton({@required this.buttonText,@required this.onPressed,});

  Widget build(BuildContext context) {
    return RawMaterialButton(
      fillColor: Colors.blueAccent,
      splashColor: Colors.orange,
      shape: StadiumBorder(),
      onPressed: onPressed,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
        width: 200,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.lock_open,
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              buttonText,
              style: TextStyle(color: Colors.white, fontSize: 17),
            ),
          ],
        ),
      ),
    );
  }
}
