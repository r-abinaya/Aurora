import "package:aurora/pages/pages.dart";
import "package:flutter/material.dart";

const List<String> list = <String>['NGO / Charity', 'Restaurant'];

class ChooseOption extends StatelessWidget {
 
  const ChooseOption ({super.key});
  
  @override
  Widget build(BuildContext context) {
      return  Scaffold(
        backgroundColor: const Color.fromARGB(255, 110, 212, 159),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'How would you like to continue',
                  style: TextStyle(fontSize: 30),
                )),

              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 16),
                child: DropdownButtonExample(),
              ),

                Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 25),
                child: ElevatedButton(
                onPressed: ()
                {
                   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Profile()));
                },
                child: const Padding(
                    padding: EdgeInsets.all(15),
                    child:Text(
                    'Continue',
                    style: TextStyle(fontSize: 20),
                    
                    ),
                )
                
              ),
              ),
          ],
           
         
        ),
    );
  }

  
  
  
}
class DropdownButtonExample extends StatefulWidget {
  const DropdownButtonExample({super.key});

  @override
  State<DropdownButtonExample> createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<DropdownButtonExample> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Color.fromARGB(255, 5, 5, 5)),
      underline: Container(
        height: 2,
        color: const Color.fromARGB(255, 19, 122, 84),
      ),
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      items: list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}







