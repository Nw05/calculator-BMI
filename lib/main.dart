import 'package:flutter/material.dart';
import 'package:calculator/home.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorSchemeSeed: Colors.blue),
      darkTheme: ThemeData(
          colorSchemeSeed: Colors.yellow, brightness: Brightness.dark),
      themeMode: ThemeMode.system,
      home: Scaffold(
        appBar: AppBar(title: const Text("BMI calculator"), elevation: 1),
        body: const HomeScreen(), 
      ),
    );
  }
}
