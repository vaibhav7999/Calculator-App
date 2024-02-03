import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 35, vertical: 25),
      child: TextField(
        decoration: InputDecoration(
         // prefixIcon: 
          controller:controller,
          suffixIcon: Icon(Icons.search),
          hintText: 'Enter the Value to Calculate',
          border: OutlineInputBorder(),
        ),
        showCursor: true,
        autofocus: true,
      ),
    );
  }
}