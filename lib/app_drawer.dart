import 'package:flutter/material.dart';

Widget myDrawer(BuildContext context) {
  return Drawer(
    // Add a ListView to the drawer. This ensures the user can scroll
    // through the options in the drawer if there isn't enough vertical
    // space to fit everything.
    child: ListView(
      // Important: Remove any padding from the ListView.

      children: [
        const DrawerHeader(
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
              image: DecorationImage(
                  image: AssetImage("../assets/dmonk_logo.png"))),
          child: Text(''),
        ),
        ListTile(
          leading: Icon(Icons.home),
          title: const Text('Home'),
          onTap: () {
             Navigator.pop(context);
            Navigator.pushNamed(context, '/home');
          },
        ),
        ListTile(
          leading: Icon(Icons.book),
          title: const Text('About Us'),
          onTap: () {
            Navigator.pop(context);
           Navigator.pushNamed(context, '/aboutus');
          },
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title: const Text('Settings'),
          onTap: () {
            // Update the state of the app
            // ...
            // Then close the drawer
            Navigator.pop(context);
          },
        ),
      ],
    ),
  );
}
