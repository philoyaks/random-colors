import 'dart:math';

import 'package:flutter/material.dart';

///Home Screen for the Application
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color _backgroundColor = Colors.white;
  double fontSize = 24;

  void _changeBackgroundColor() {
    setState(() {
      _backgroundColor = _generateRandomColor();
    });
  }

  Color _generateRandomColor() {
    final Random random = Random();
    const int colorValue = 256;
    const double opacityValue = 1.0;

    return Color.fromRGBO(
      random.nextInt(colorValue),
      random.nextInt(colorValue),
      random.nextInt(colorValue),
      opacityValue,
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _changeBackgroundColor,
      child: Scaffold(
        body: ColoredBox(
          color: _backgroundColor,
          child: Center(
            child: Text(
              'Hello there',
              style: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: _backgroundColor == Colors.white
                    ? Colors.black
                    : Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
