import 'package:flutter/material.dart';
import 'input_page.dart';
import 'doctorpage.dart';


void main() {
  runApp(SwasthApp());
}

class SwasthApp extends StatelessWidget {
  const SwasthApp ({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        primaryColor: Colors.orangeAccent,
        scaffoldBackgroundColor: Colors.orangeAccent,

      ),
      home: InputPage(),
    );
  }
}
