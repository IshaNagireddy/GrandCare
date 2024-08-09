import 'package:GrandCare/admin_login.dart';
import 'package:GrandCare/grandparent_login.dart';
import 'package:GrandCare/resources_menu.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginChoice extends StatelessWidget {
  Widget build(BuildContext context) {
    final TextScaler textScaler = MediaQuery.textScalerOf(context);
    final double baseFontSize = 30;
    final double scaledFontSize = textScaler.scale(baseFontSize);
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 14, 37, 57),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          child: Column(
            children: <Widget> [
               Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget> [
                  Text('Welcome to CareExpress!',
                  textAlign: TextAlign.center, style: GoogleFonts.poppins(
                    fontSize: scaledFontSize*.95,
                    color: Colors.white
                  ),),
                  SizedBox(height: 20,),
                  Text("Sign-in to access specific services and resources",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: scaledFontSize*0.75
                  ),),
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height / 3,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/loginScreenImage.png')
                  ),
                ),
              ),

              Column(
                children: <Widget> [
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => AdminLogin()));},
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(50)
                    ),

                    child:  Text("Admin Login", style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: scaledFontSize*0.8,
                      color: Colors.white,
                    ),),
                  ),

                  const SizedBox(height: 20),

                  Container(
                    padding: const EdgeInsets.only(top: 3, left: 3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: const Border(
                        bottom: BorderSide(color: Colors.white),
                        top: BorderSide(color: Colors.white),
                        left: BorderSide(color: Colors.white),
                        right: BorderSide(color: Colors.white),
                      )
                    ),
                    child: MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => GrandparentLogin()));
                    },
                    color: Color.fromARGB(255, 229, 243, 255),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)
                    ),

                    child:  Text("Grandparent Login", style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      fontSize: scaledFontSize*.8
                    ),),
                  ),
                  ),

                  const SizedBox(height: 20),


                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

