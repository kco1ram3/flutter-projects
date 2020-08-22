import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String buttonText;
  final Function buttonClick;

  ButtonWidget(this.buttonText, this.buttonClick);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      textColor: Colors.blue,
      child: Text(buttonText),
      onPressed: buttonClick,
    );
  }
}
