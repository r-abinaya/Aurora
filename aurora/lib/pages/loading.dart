import 'package:flutter/material.dart';
import 'package:aurora/pages/pages.dart';
import 'dart:async';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
   void initState(){
    super.initState();
    Future.delayed(const Duration (seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const LogIn()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 110, 212, 159),
      body: Center(
        child: Image.asset(
          'assets/loading.gif',
          height: 150.0,
          width: 150.0,
        ),
      ),
    );
  }
}