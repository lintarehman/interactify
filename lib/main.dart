import 'package:flutter/material.dart';
import 'package:interim_fyp/login.dart';
import 'package:interim_fyp/profile.dart';
import 'package:interim_fyp/splash_screen.dart';
import 'package:interim_fyp/signup.dart';
import 'package:interim_fyp/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'INTERACTIFY',
      debugShowCheckedModeBanner: false,
      initialRoute: splash_screen.id,
      routes: {
        splash_screen.id:(context)=>splash_screen(),
        login.id:(context)=>login(),
        signup.id:(context)=>signup(),
        profile.id:(context)=>profile(),
        //dusra wala class ka name hota hai
      },
    );
  }
}