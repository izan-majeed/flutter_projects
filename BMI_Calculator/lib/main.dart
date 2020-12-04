import 'package:flutter/material.dart';
import 'screens/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xff101639),
        scaffoldBackgroundColor: Color(0xff0C1434),
        accentColor: Colors.pink,
      ),
      home: InputPage(),
    );
  }
}


