import "package:aurora/pages/pages.dart";
import "package:flutter/material.dart";

class CharityCard extends StatelessWidget {
  const CharityCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 110, 212, 159),
        body: Center(
          padding: const EdgeInsets.all(16.0),
        // ignore: prefer_const_literals_to_create_immutables
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton.icon(
                 Row(
                   mainAxisSize: MainAxisSize.min,
               children: const [
                  Text(
                    'Location',
                    style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                 ),
              ),
              ],
             ),
                onPressed: () {
                   
                },
                
              ),
              SizedBox(width: 10),
              ElevatedButton(
                onPressed: () {
                  appState.getNext();
                },
                child: Text('Next'),
              ),
            ],
          ),
           Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton.icon(
                onPressed: () {
                  appState.toggleFavorite();
                },
                icon: Icon(icon),
                label: Text('Like'),
              ),
              SizedBox(width: 10),
              ElevatedButton(
                onPressed: () {
                  appState.getNext();
                },
                child: Text('Next'),
              ),
            ],
          ),
          ]
         ),
    );
  }
}
