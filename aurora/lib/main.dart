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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Profile(),
      title: 'Aurora',
      //home: const Loading(),
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 110, 212, 159),
      ),
    );
  }
}