import 'package:flutter/material.dart';
import 'package:last/screens/home_screen.dart';
import 'package:provider/provider.dart';
import './Provider/cal_provider.dart';

class CalculatorApp extends StatelessWidget {
  const CalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CalculateProvider(),
      child: MaterialApp(
        theme: ThemeData.dark(),
        home: const HomeScreen(),
      ),
    );
  }
}


void main() {
  runApp(const CalculatorApp());
}
