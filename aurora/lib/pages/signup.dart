import "package:flutter/material.dart";

class SignUp extends StatelessWidget {
  const SignUp({super.key});

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
                  'Sign in to continue',
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
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 25),
                child: ElevatedButton(
                onPressed: ()
                {},
                child: const Padding(
                    padding: EdgeInsets.all(15),
                    child:Text(
                    'Sign In',
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
