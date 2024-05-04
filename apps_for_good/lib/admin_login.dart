import 'package:GrandCare/admin_view.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AdminLogin extends StatelessWidget {
final TextEditingController emailController = TextEditingController();
final TextEditingController passwordController = TextEditingController();

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
                const Column(
                  children: <Widget>[
                    Text("Admin Login", style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    ),),
                    SizedBox(height: 20),
                    Text("Login to your account", style: TextStyle(
                      fontSize: 15,
                      color: Colors.white
                    ),),
                  ]
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 50),
                  child: Column(
                    children: <Widget> [
                      makeInput(label: "Email", fieldType: emailController),
                      makeInput(label: "Password", fieldType: passwordController, obscureText: true),


                  ]
                  )
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
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
                    onPressed: () async {
                     String? result = await login(email: emailController.text, password: passwordController.text);
                     if (result == "Success") {
                      // ignore: use_build_context_synchronously
                      Navigator.push(context, MaterialPageRoute(builder: (context) => AdminView()));
                     }

                     else {
                      // ignore: use_build_context_synchronously
                      _showImageAlertDialog(context);
                      
                    }
                    },
                    color: const Color.fromARGB(255, 229, 243, 255),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)
                    ),

                    child: const Text("Login", style: TextStyle(
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
        Text(label, style: const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w400,
          color: Colors.white
        ),),
        const SizedBox(height: 5,),
        TextField(
          controller: fieldType,
          obscureText: obscureText,
          cursorColor: Colors.white,
          style: const TextStyle(color: Colors.white),
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

  Future<String?> login({
    required String email,
    required String password,
  }) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return 'Success';
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        return 'No user found for that email.';
      } else if (e.code == 'wrong-password') {
        return 'Wrong password provided for that user.';
      } else {
        return e.message;
      }
    } catch (e) {
      return e.toString();
    }
  }

   void _showImageAlertDialog(BuildContext context) { 
    showDialog( 
      context: context, 
      builder: (BuildContext context) { 
        return AlertDialog( 
          title: const Text('Incorrect password!'), 
          content: Column( 
            mainAxisSize: MainAxisSize.min, 
            children: <Widget>[ 
              Image.asset( 
                'assets/Y6ez38CH2M.gif', // Replace with your image path 
                width: 150, // Adjust image width as needed 
              ), 
              const SizedBox(height: 16), // Adjust spacing as needed 
              const Text('Please re-enter your username and password.'), 
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