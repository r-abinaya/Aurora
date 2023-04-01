import "package:aurora/pages/donateRestDet.dart";
import "package:flutter/material.dart";

class Home extends StatelessWidget {
  const Home({super.key});
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
                child: Image.asset('assets/food-donation.gif',
                height: 400.0, width: 250.0, alignment: Alignment.topRight),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 25),
                child: ElevatedButton(
                    onPressed: () {
                       Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const DonateDet()));
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(15),
                      child: Text(
                        'DONATE',
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
