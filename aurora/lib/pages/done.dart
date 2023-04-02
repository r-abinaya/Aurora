import "package:aurora/pages/pages.dart";
import "package:flutter/material.dart";

class Done extends StatefulWidget {
  const Done({super.key});

  @override
  State<Done> createState() => _DoneState();
}

class _DoneState extends State<Done> {
  @override
   void initState(){
    super.initState();
    Future.delayed(const Duration (seconds: 3), () {
      Navigator.pushNamed(context, '/thanks');
    });
  }
@override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 110, 212, 159),
      body: Center(
        
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
                Image.asset('assets/booked.gif',
                height: 400.0, width: 250.0, alignment: Alignment.topRight),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 25),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Home()));
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(15),
                      child: Text(
                        'BOOKED SUCCESSFULLY',
                        style: TextStyle(fontSize: 30),
                      ),
                    )),
              ),
            ]
            ),
      ),
    );
  }
}