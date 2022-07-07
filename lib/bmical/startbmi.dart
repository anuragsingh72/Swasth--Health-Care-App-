import 'package:flutter/material.dart';
import 'demo..dart';

class bmi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.pinkAccent,
      ),
      home: Demo(),
    );
  }
}