
import 'package:GrandCare/calendar_view_container.dart';
import 'package:GrandCare/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'login_choice.dart';
import 'package:firebase_core/firebase_core.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
 runApp(const MyApp());
}


class MyApp extends StatelessWidget {
 const MyApp({Key? key}) : super(key: key);


 // This widget is the root of your application.
 @override
 Widget build(BuildContext context) {
   return const MaterialApp(
     debugShowCheckedModeBanner: false,
     home: OnBoardingScreen(),
   );
 }
}