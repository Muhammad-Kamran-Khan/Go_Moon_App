import 'package:flutter/material.dart';
import 'package:go_moon_app/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Go Moon',
      theme: ThemeData(
        brightness: Brightness.dark
      ),
      home: HomePage(),
    );
  }
}


