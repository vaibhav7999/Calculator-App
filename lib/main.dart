import 'package:flutter/material.dart';

class CalculatorApp extends StatelessWidget {
  const CalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return  MaterialApp(
      theme : ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: const Center (child: Text("Calculator App")),
        ),
      ),
    );
  }
}
void main(){
  runApp(const CalculatorApp());
}

