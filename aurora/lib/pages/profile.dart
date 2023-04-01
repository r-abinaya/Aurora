import 'package:flutter/material.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _ProfileState();
}

class _ProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){},
          icon: const Icon(Icons.arrow_back_ios_new),
          ),
        title:  const Text('PROFILE',),
        actions: const[
          
        ],
      ),
    );
  }
}