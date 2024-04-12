import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 14, 37, 57),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'lorem ipsum',
              style: GoogleFonts.poppins(
                textStyle: Theme.of(context).textTheme.displayLarge,
                fontSize: 30,
                color: Color.fromARGB(255, 229, 243, 255),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'lorem ipsum dolor sit amet ads;ughaslruffdngldksjgnsldj fjansdl gfa idgalkjg aljg ljdasn alje gaeijn aljkg a dig al aglhgalj a glafgudglu andjlg aiglakj a djlglakjndljnga',
                style: GoogleFonts.poppins(
                  textStyle: Theme.of(context).textTheme.displayLarge,
                  fontSize: 15,
                  color: Color.fromARGB(255, 229, 243, 255),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
