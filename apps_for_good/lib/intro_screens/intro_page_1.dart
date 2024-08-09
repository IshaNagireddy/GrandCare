import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
final TextScaler textScaler = MediaQuery.textScalerOf(context);
final double baseFontSize = 30;
final double scaledFontSize = textScaler.scale(baseFontSize);
    return Container(
      color: Color.fromARGB(255, 14, 37, 57),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to',
              style: GoogleFonts.poppins(
                textStyle: Theme.of(context).textTheme.displayLarge,
                fontSize: scaledFontSize,
                color: const Color.fromARGB(255, 229, 243, 255),
              ),
            ),
            const Image(
              image: AssetImage("assets/logo.png"),
            ),
          ],
        ),
      ),
    );
  }
}
