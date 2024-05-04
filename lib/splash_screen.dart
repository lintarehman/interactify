import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:interim_fyp/signup.dart';

class splash_screen extends StatefulWidget {
  static const String id='splash_screen';
  const splash_screen({super.key});

  @override
  State<splash_screen> createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ElevatedButton(
          onPressed: () {
            // Navigate to the SecondScreen when the button is pressed.
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => signup()),
            );
          },
          child: Text('Go to Second Screen'),
        ),
      ),
    );
  }
}
