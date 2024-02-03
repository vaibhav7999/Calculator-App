import 'package:flutter/material.dart';
import 'package:last/screens/home_screen.dart';

class CalculatorApp extends StatelessWidget {
  const CalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: const HomeScreen(),
    );
  }
}

void main() {
  runApp(const CalculatorApp());
}
