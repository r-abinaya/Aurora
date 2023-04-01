import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';



class DonateDet extends StatefulWidget {
  const DonateDet({super.key});

  @override
  State<DonateDet> createState() => _ProfileState();
}

class _ProfileState extends State<DonateDet> {
  String name = '';
  String location = '';
  String dietPreference = '';
  final userfdetController = TextEditingController();
  final userqntyController = TextEditingController();
  final usernopController = TextEditingController();
  final userCookController = TextEditingController();
  final userexpController = TextEditingController();
  final userdesController = TextEditingController();
  late DatabaseReference dbef  = FirebaseDatabase.instance.ref().child('Food');

  //dbef = FirebaseDatabase.instance.ref().child('Food');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
        title: const Text(
          'Enter Food Details',
        ),
        actions: const [],
        backgroundColor: const Color.fromARGB(255, 110, 212, 159),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
         
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              
              'Food Serve Quantity(No of people)',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            TextField(
  controller:userqntyController ,

              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter food quantity',
              ),
              onChanged: (value) {
                setState(() {
                  location = value;
                });
              },
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Food Cooked Time',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            TextField(
               controller:userCookController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter cooked time',
              ),
              onChanged: (value) {
                setState(() {
                  location = value;
                });
              },
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Food Expiry Time',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            TextField(
               controller:userexpController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter expiry time',
              ),
              onChanged: (value) {
                setState(() {
                  location = value;
                });
              },
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Food Description',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            TextField(
               controller:userdesController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Eg:Rice,sambar,etc..',
              ),
              onChanged: (value) {
                setState(() {
                  name = value;
                });
              },
            ),
            const SizedBox(height: 16.0),
            Center(
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      const Color.fromRGBO(47, 155, 142, 1)),
                ),
                child: const Text('Save'),
                onPressed: () {
                  Map<String,String> food = {
                    'des':userdesController.text,
                    'qnty':userqntyController.text,
                    'cook':userCookController.text,
                    'exp':userexpController.text
                  };
                  dbef.push().set(food);

                  // Save profile information here
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
