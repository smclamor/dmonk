import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            'OO AAA OO A',
            style: GoogleFonts.kanit(fontSize: 40),
          ),
          Text(
            'That is welcome in monkey language.',
            style: TextStyle(fontSize: 12),
          ),
          Divider(),
         Container(
          decoration: BoxDecoration(
           color: Color.fromARGB(255, 101, 110, 122),
           image: const DecorationImage(
             image: AssetImage('../assets/dmonk_logo.png'),
             fit: BoxFit.cover,
            ),
          ),
         ),
          Text(
            "D'monK is the perfect app for anyone who wants to learn about the different types and species of monkeys. Our app provides a ",
            style: GoogleFonts.kanit(fontSize: 15),
          ),
          Text(
            "comprehensive list of monkeys, complete with detailed descriptions and vivid images to give you a closer look at these fascinating creatures. ",
            style: GoogleFonts.kanit(fontSize: 15),
          ),
          Text(
            "Whether you are a curious student, a nature enthusiast, or a passionate monkey fan, D'monK has something to offer.",
            style: GoogleFonts.kanit(fontSize: 15),
          ),
        ]);
  }
}
