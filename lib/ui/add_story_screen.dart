import 'dart:math';

import 'package:flutter/material.dart';

double randomBorderRadius() {
  return Random().nextDouble() * 20;
}

double randomMargin() {
  return Random().nextDouble() * 20;
}

Color randomColor() {
  return Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
}

class AddStoryScreen extends StatefulWidget {
  const AddStoryScreen({super.key});

  @override
  State<AddStoryScreen> createState() => _AddStoryScreenState();
}

class _AddStoryScreenState extends State<AddStoryScreen> {
  late double borderRadius; //initial state
  late double margin;
  late Color warna;

  Offset position = Offset(100, 100);

  void initState() {
    borderRadius = randomBorderRadius();
    margin = randomMargin();
    warna = randomColor();
  }

  void changesState() {
    setState(() {
      borderRadius = randomBorderRadius();
      margin = randomMargin();
      warna = randomColor();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: position.dx,
            top: position.dy,
            child: GestureDetector(
              onTap: changesState,
              onPanUpdate: (details) {
                setState(() {
                  position += details.delta;
                });
              },
              child: SizedBox(
                width: 100,
                height: 100,
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 2000),
                  curve: Curves.bounceIn,
                  margin: EdgeInsets.all(margin),
                  decoration: BoxDecoration(
                    color: warna,
                    borderRadius: BorderRadius.circular(borderRadius),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
