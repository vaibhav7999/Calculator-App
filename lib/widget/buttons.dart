import 'package:flutter/material.dart';

class Button1 extends StatelessWidget {
  final String label;
  final Color textcolor;
  const Button1({
    super.key,
    required this.label,
    this.textcolor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {},
        child: Material(
          elevation: 3,
          color: const Color.fromARGB(255, 36, 35, 35),
          borderRadius:
              BorderRadius.circular(36), // Background color of the button
          child: CircleAvatar(
            radius: 36,
            backgroundColor: const Color.fromARGB(
                255, 36, 35, 35), // To ensure consistency with Material color
            child: Text(
              label,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: textcolor,
              ),
            ),
          ),
        ));
  }
}
