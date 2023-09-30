import 'package:flutter/material.dart';
import 'package:module8a/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      title: "Assigmnent 8",
      theme: ThemeData(
        textTheme: TextTheme(
          bodyLarge: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
