import 'package:flutter/material.dart';
import 'package:last/widget/cal_button.dart';
import 'package:last/widget/textfield.dart';
import 'data.dart';

//import "../widget/buttons.dart";
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    const BoxDecoration decoration = BoxDecoration(
      color: Color.fromARGB(255, 22, 22, 22),
      borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
    );
    const padding = EdgeInsets.symmetric(horizontal: 45, vertical: 45);
    const margin = EdgeInsets.all(30);
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Calculator App")),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const CustomTextField(),
              Container(
                width: double.infinity,
                padding: padding,
                decoration: decoration,
                margin: margin,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(4, (index) => buttonList[index]),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:
                          List.generate(4, (index) => buttonList[index + 4]),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:
                          List.generate(4, (index) => buttonList[index + 8]),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: List.generate(
                                  3, (index) => buttonList[index + 12]),
                            ),
                            const SizedBox(
                              height: 20,

                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: List.generate(
                                  3, (index) => buttonList[index + 15]),
                            ),
                          ],
                          )  
                        ),
                        const CalculateButton(),
                      ]
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}

