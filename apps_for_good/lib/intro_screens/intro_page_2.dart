import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // ignore: prefer_const_constructors
      color: Color.fromARGB(255, 14, 37, 57),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'GrandCare is an app that helps families like you!',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  textStyle: Theme.of(context).textTheme.displayLarge,
                  fontSize: 30,
                  color: const Color.fromARGB(255, 229, 243, 255),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'This app is associated with the Central Massachusetts Agency on Aging (CMAA). It has been created to help achieve its mission of assisting the senior citizens of central Massachusetts, particularly supporting grandparents raising their grandchildren such as you. Currently, you can view information about general resources provided by the CMAA. Additionally, you can schedule appointments with the CMAA support staff to request to qualify for and receive services.',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  textStyle: Theme.of(context).textTheme.displayLarge,
                  fontSize: 15,
                  color: const Color.fromARGB(255, 229, 243, 255),
                ),
              ),
            ),
              Image(
              image: AssetImage("assets/intro2.png"),
              height: 300,
            ),
           
              
          ],
        ),
      ),
    );
  }
}
