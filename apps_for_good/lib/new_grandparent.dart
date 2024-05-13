import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:google_fonts/google_fonts.dart';


class NewGrandparent extends StatefulWidget {
  const NewGrandparent({Key? key}): super(key: key);

  State<NewGrandparent> createState() => _NewGrandparentState();
  }

class _NewGrandparentState extends State<NewGrandparent> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController passwordAgainController = TextEditingController();

  late DatabaseReference database_reference;

  @override
  void initState() {
    super.initState();
    database_reference = FirebaseDatabase.instance.ref().child('New Users');  
  }

  Widget build(BuildContext context) {
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
                    Text("New Grandparent", style: GoogleFonts.poppins(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    ),),
                    SizedBox(height: 20),
                    Text("Sign up for a new account", style: GoogleFonts.poppins(
                      fontSize: 15,
                      color: Colors.white
                    ),),
                  ]
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 50),
                  child: Column(
                    children: <Widget> [
                      makeInput(label: "Email", obscureText: false, fieldType: emailController),
                      makeInput(label: "New Password", obscureText: true, fieldType: passwordController),
                      makeInput(label: "Re-enter password", obscureText: true, fieldType: passwordAgainController),
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
                      debugPrint(emailController.text);
                      debugPrint(passwordAgainController.text);

                      Map<String, String> newUser = {
                        'email' : emailController.text,
                        'password' : passwordAgainController.text
                      };
                      database_reference.push().set(newUser);
                      _showImageAlertDialog(context);
                    },
                    color: const Color.fromARGB(255, 229, 243, 255),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)
                    ),

                    child:  Text("Submit Information", style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),),
                  ),
                )
                ), 
                
              ]
            ),

          ]
        )
      ),
    );
  }

  Widget makeInput({label, obscureText = false, fieldType}) {
    return Column(
      children: <Widget> [
        Text(label, style:  GoogleFonts.poppins(
          fontSize: 15,
          fontWeight: FontWeight.w400,
          color: Colors.white
        ),),
        const SizedBox(height: 5,),
        TextField(
          controller: fieldType,
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

  void _showImageAlertDialog(BuildContext context) { 
    showDialog( 
      context: context, 
      builder: (BuildContext context) { 
        return AlertDialog( 
          title: const Text('Thank you for submitting!'), 
          content: Column( 
            mainAxisSize: MainAxisSize.min, 
            children: <Widget>[ 
              Image.asset( 
                'assets/greentick-unscreen.gif', // Replace with your image path 
                width: 150, // Adjust image width as needed 
              ), 
              const SizedBox(height: 16), // Adjust spacing as needed 
              const Text('Your account has been created.'), 
            ], 
          ), 
          actions: <Widget>[ 
            ElevatedButton( 
              onPressed: () { 
                Navigator.of(context).pop(); // Close the AlertDialog 
              }, 
              child: const Text('Close'), 
            ), 
          ], 
        ); 
      }, 
    ); 
  }
}