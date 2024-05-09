import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:interim_fyp/profile.dart';
import 'package:interim_fyp/signup.dart';

class login extends StatefulWidget {
  static const String id='login';
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}
class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/login.png'), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 35, right: 35),
                      child: Column(
                        children: [
                          TextField(
                            style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                                fillColor: Colors.grey.shade100,
                                filled: true,
                                hintText: "Enter Username",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          TextField(
                            style: TextStyle(),
                            obscureText: true,
                            decoration: InputDecoration(
                                fillColor: Colors.grey.shade100,
                                filled: true,
                                hintText: "Enter Password",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Center(
                                child: Container(
                                  width: 350,
                                  height: 40,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => profile()
                                      ));
                                    },
                                    style: ElevatedButton.styleFrom(
                                      primary: Color(0xff4c505b), // Background color
                                    ),
                                    child: Text(
                                      'Log In',
                                      style: TextStyle(
                                        color: Colors.white, // Text color
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Forgotten your login details? ',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 0.0),
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, 'forget');
                                  },
                                  child: Text(
                                    'Get help with logging in',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        color: Color(0xff4c505b),
                                        fontSize: 12),
                                  ),
                                  style: ButtonStyle(),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          Container(
                            width: double.infinity,
                            child: Divider(
                              color: Colors.black, // Color of the line
                              thickness: 1, // Thickness of the line
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Dont have an account? ',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 0.0),
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => signup()));
                                  },
                                  child: Text(
                                    'Sign Up',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        color: Color(0xff4c505b),
                                        fontSize: 15),
                                  ),
                                  style: ButtonStyle(),
                                ),
                              ),
                            ],
                          ),


                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );

  }
}
