/*
1. Create a new Flutter App (flutter create flutter_assignment, then replace your main.dart with the attached one) 
and output an AppBar and some text below it (i.e. in the body of the page)

2. Add a button (e.g. RaisedButton) which changes the text (to any other text of your choice)

3. Split the app into three custom widgets: App, TextControl & Text
*/

import 'package:flutter/material.dart';
import 'dart:math';

import './appBarWidget.dart';
import './textWidget.dart';
import './buttonWidget.dart';

void main() => runApp(MyAssignmentApp());

class MyAssignmentApp extends StatefulWidget {
  @override
  _MyAssignmentAppState createState() => _MyAssignmentAppState();
}

class _MyAssignmentAppState extends State<MyAssignmentApp> {
  final _appBarText = 'My Assignment Test';
  final _buttonText = 'Get your lucky number';
  var _resultText = 'Please click button below to get lucker number';

  void _getLuckyNumber() {
    Random random = new Random();
    setState(() {
      _resultText = 'Your lucky number is ' + random.nextInt(100).toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBarWidget(_appBarText),
        body: Center(
          child: Column(
            children: [
              TextWidget(_resultText),
              ButtonWidget(_buttonText, _getLuckyNumber)
            ],
          ),
        ),
      ),
    );
  }
}
