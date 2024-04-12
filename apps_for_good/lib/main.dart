
import 'package:apps_for_good/login_choice.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: const Color.fromARGB(255, 14, 37, 57),),
      home: LoginChoice(),
    )
  );
}