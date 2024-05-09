import 'package:flutter/material.dart';
import 'package:interim_fyp/login.dart';
class faceauthentication extends StatefulWidget {
  static const String id='faceauthentication';

  const faceauthentication({super.key});

  @override
  State<faceauthentication> createState() => _faceauthenticationState();
}

class _faceauthenticationState extends State<faceauthentication> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFF8BA3B3),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Set Your Profile Image',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage('assets/profile.jpg'), // Change this to your profile picture
              ),
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Color(0xff4c505b)),
                onPressed: () {
                  // Call face authentication method
                  // You can implement your face authentication logic here
                  // For demonstration purposes, let's just print a message

                  print('Face authentication in progress...');
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.camera_alt), // Camera icon
                    SizedBox(width: 8), // Adding space between icon and text
                    Text('Face Authentication'),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                width: 350,
                height: 40,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => login()
                    ));
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xff4c505b), // Background color
                  ),
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      color: Colors.white, // Text color
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

