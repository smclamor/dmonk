import 'package:flutter/material.dart';
import 'app_drawer.dart';
import 'text_layout.dart';
import 'about_us.dart';
import 'grid.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 162, 138, 85),
        title: Text("DMONKE"),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(Icons.edit),
          ),
        ],
      ),
      drawer: myDrawer(context),
      body: Column(children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(10),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search',
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(),
            ),
          ),
        ),
        Expanded(
          child: MonkeyGrid(),
        )
      ]),
    );
  }
}
