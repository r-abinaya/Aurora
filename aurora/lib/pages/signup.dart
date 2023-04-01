import "package:flutter/material.dart";

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
          const Text('Email id: '),
          const Text('Password: '),
          ElevatedButton(
            onPressed: ()
            {
                  
            },
            child:const Text('Sign Up'),
          ),
        ]),
    );
  }
}