import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 35, vertical: 25),
      child: TextField(
        decoration: InputDecoration(
         // prefixIcon: 
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