import "package:aurora/pages/pages.dart";
import "package:flutter/material.dart";
class ThankYou extends StatelessWidget {
  const ThankYou({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 110, 212, 159),
      body: Center(
        
      
               child: Image.asset('assets/thanks.gif',
                height: 400.0, width: 250.0, alignment: Alignment.topRight),
             
            
            ),
      
    );
  }
}
