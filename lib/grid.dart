import 'package:flutter/material.dart';
import 'detailspage.dart';

class MonkeyGrid extends StatelessWidget {
  MonkeyGrid({super.key});

  final List<Map<String, dynamic>> _monkeys = [
    {
      'name': 'Spider Monkey',
      'description':
          'Spider Monkeys are known for their long limbs and prehensile tails, which they use to swing and climb through the trees.',
      'weight': 'Varies, typically between 8 to 10 kilograms',
      'height': 'Varies, typically between 35 to 63 centimeters',
      'image': '../assets/monkey (1).jpg',
    },
    {
      'name': 'Capuchin Monkey',
      'description':
          'Capuchin Monkeys are intelligent and social monkeys known for their dexterous hands and problem-solving abilities.',
      'weight': 'Varies, typically between 2.5 to 4 kilograms',
      'height': 'Varies, typically between 30 to 56 centimeters',
      'image': '../assets/monkey (2).jpg',
    },
    {
      'name': 'Mandrill',
      'description':
          'Mandrills are colorful monkeys with distinct facial markings. They are the largest species of monkey and live in the rainforests of Central Africa.',
      'weight': 'Varies, typically between 20 to 35 kilograms',
      'height': 'Varies, typically between 50 to 75 centimeters',
      'image': '../assets/monkey (3).jpg',
    },
    {
      'name': 'Howler Monkey',
      'description':
          'Howler Monkeys are known for their loud and distinctive howling calls, which can be heard over long distances in the rainforest.',
      'weight': 'Varies, typically between 4 to 10 kilograms',
      'height': 'Varies, typically between 56 to 92 centimeters',
      'image': '../assets/monkey (4).jpg',
    },
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
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          DetailsPage(monkey: _monkeys[index]),
                    ),
                  );
                },
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
