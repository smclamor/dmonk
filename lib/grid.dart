import 'package:flutter/material.dart';

class MonkeyGrid extends StatelessWidget {
  MonkeyGrid({super.key});

  final List<Map<String, dynamic>> _monkeys = [
    {'name': 'Christian Lanada', 'image': '../assets/monkey (1).jpg'},
    {'name': 'Drein Kyle', 'image': '../assets/monkey (2).jpg'},
    {'name': 'Bombay', 'image': '../assets/monkey (3).jpg'},
    {'name': 'Bubba ni Shadi', 'image': '../assets/monkey (4).jpg'}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.builder(
            padding: EdgeInsets.all(10),
            itemCount: _monkeys.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 0.8,
            ),
            itemBuilder: (context, index) {
              final pokemon = _monkeys[index];

              return GestureDetector(
                onTap: () {},
                child: Card(
                  elevation: 5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Image.network(
                        pokemon['image'],
                        height: 100,
                      ),
                      Text(
                        pokemon['name'],
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }));
  }
}
