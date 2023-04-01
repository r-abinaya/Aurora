import 'package:flutter/material.dart';
import 'package:aurora/pages/pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Aurora',
<<<<<<< HEAD
      home: SignUp(),
=======
      home: Loading(),
>>>>>>> 8b6048422b3c19be8ac4c594ad2b2e995ad4d30c
    );
  }
}