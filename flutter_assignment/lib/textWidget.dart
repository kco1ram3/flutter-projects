import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String resultText;

  TextWidget(this.resultText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        resultText,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
