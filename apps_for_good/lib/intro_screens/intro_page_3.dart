import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage3 extends StatelessWidget {
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
              Image(
              image: AssetImage("assets/loginImage3.png"),
              height: 300,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'We hope that you will find this app helpful!',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  textStyle: Theme.of(context).textTheme.displayLarge,
                  fontSize: scaledFontSize,
                  color: const Color.fromARGB(255, 229, 243, 255),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Feel free to reach out to the Senior Connection support staff if you have any questions or concerns!',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  textStyle: Theme.of(context).textTheme.displayLarge,
                  fontSize: scaledFontSize*.75,
                  color: const Color.fromARGB(255, 229, 243, 255),
                ),
              ),
            ),
        
          ],
        ),
      ),
    );
  }
}
