import 'package:flutter/material.dart';
import 'app_drawer.dart';
import 'text_layout.dart';

class BasicScreen extends StatelessWidget {
  const BasicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 162, 138, 85),
        title: Text("Welcome to D'MonK"),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(Icons.edit),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            '../assets/dmonk_logo.png',
            height: 300,
            width: 300,
          ),
          TextLayout(),
        ],
      ),
      drawer: myDrawer(context),
    );
  }
}
