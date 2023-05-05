import 'package:flutter/material.dart';
import 'package:random_colors/home_page.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Flutter Color Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    ),
  );
}
