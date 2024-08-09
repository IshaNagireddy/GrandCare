import 'package:GrandCare/resources_menu.dart';
import 'package:GrandCare/new_grandparent.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';


class GrandparentLogin extends StatelessWidget {
  String password = '';
  Widget build(BuildContext context) {
    final TextScaler textScaler = MediaQuery.textScalerOf(context);
    final double baseFontSize = 30;
    final double scaledFontSize = textScaler.scale(baseFontSize);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromARGB(255, 14, 37, 57),
      appBar: AppBar (
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 14, 37, 57),
        leading: IconButton(
          onPressed:() {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios, size: 20, color: Colors.white),
        ),
      ),

      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget> [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget> [
                Column(
                  children: <Widget>[
                    Text("Grandparent Login", style: GoogleFonts.poppins(
                      fontSize: scaledFontSize,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    ),),
                    SizedBox(height: 20),
                    Text("Login to your account", style: GoogleFonts.poppins(
                      fontSize: scaledFontSize*0.75,
                      color: Colors.white
                    ),),
                  ]
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 50),
                  child: Column(
                    children: <Widget> [
                      makeInput(label: "Email"),
                      makeInput(label: "Password", obscureText: true),
                  ]
                  )
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child:  Container(
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
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const ResourcesMenu()));
                    },
                    color: const Color.fromARGB(255, 229, 243, 255),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)
                    ),

                    child:Text("Login", style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      fontSize: scaledFontSize*0.8,
                    ),),
                  ),
                )
                ), 
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget> [
                    Text("Don't have an account?", style: GoogleFonts.poppins(
                      color: Colors.white
                    )),
                    TextButton (
                      child: Text(
                         "Sign Up", 
                         style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Colors.white
                      ),),
                      onPressed: () {
                         Navigator.push(context, MaterialPageRoute(builder: (context) => const NewGrandparent()));
                      },
                    )
                  ]
                )
              ]
            ),

          ]
        )
      ),
    );
  }

  Widget makeInput({label, obscureText = false}) {

    return Column(
      children: <Widget> [
        Text(label, style:  GoogleFonts.poppins(
          fontSize: 15,
          fontWeight: FontWeight.w400,
          color: Colors.white
        ),),
        const SizedBox(height: 5,),
        TextField(
          obscureText: obscureText,
          cursorColor: Colors.white,
          style:  GoogleFonts.poppins(color: Colors.white),
          decoration: const InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white)
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white)
            )
          )
        ),

        const SizedBox(height: 30),

      ]
    );
  }
}