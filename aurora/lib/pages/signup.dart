import "package:aurora/pages/pages.dart";
import "package:flutter/material.dart";
import 'package:firebase_auth/firebase_auth.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 110, 212, 159),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Sign Up to continue',
                  style: TextStyle(fontSize: 30),
                )),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 16),
                child: TextFormField(
                decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Enter your Email id',
                ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 16),
                child: TextFormField(
                decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Enter your password',
                ),
                ),
              ),
               Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 16),
                child: TextFormField(
                decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Confirm your password',
                ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 25),
                child: ElevatedButton(
                  style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(const Color.fromRGBO(47, 155, 142, 1)),
                ),
                onPressed: ()
                {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const ChooseOption()));
                },
                child: const Padding(
                    padding: EdgeInsets.all(15),
                    child:Text(
                    'Sign Up',
                    style: TextStyle(fontSize: 20),
                    
                    ),
                )
                
              ),
              ),
            ]
          )
         ),
    );
  }
}
