import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';
import 'package:last/widget/textfield.dart'; // Ensure this path is correct

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const BoxDecoration decoration = BoxDecoration(
      color: Color.fromARGB(255, 22, 22, 22),
      borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
    );
    final screenHeight = MediaQuery.of(context).size.height;
    const padding = EdgeInsets.symmetric(horizontal: 45, vertical: 45);
    const margin = EdgeInsets.all(30);

    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Calculator App")),
      ),
      body: Column(
        children: [
          const CustomTextField(),
          Container(
            height: screenHeight * 0.6,
            width: double.infinity,
            padding: padding,
            decoration: decoration,
            margin: margin,
            child: const Column(
              children: [
                Row(
                  children: [
                    Material(
                      elevation: 3,
                      color: Colors.amber,
                    ),
                    CircleAvatar(
                      radius: 36,
                      child: Text(
                        "1",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
