import 'package:flutter/material.dart';
import 'package:listmenuu/home_page.dart';
import 'package:listmenuu/styles.dart'; // Ensure this file contains pageBgColor and headerBackColor

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: pageBgColor, // Assuming this is correctly imported
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 167, 39, 39),
          title: const Text(
            "Menu Makanan dan minuman",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          centerTitle: true,
        ),
        body: const HomePage(),
      ),
    );
  }
}
