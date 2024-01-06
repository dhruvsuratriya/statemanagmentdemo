import 'package:flutter/material.dart';

import '../2_login_signup/login_screen.dart';
import '../2_login_signup/signup_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          SizedBox(
            height: 110,
          ),
          Stack(
            clipBehavior: Clip.none,
            children: [
              Image.asset(
                'assets/images/food_1-removebg-preview.png',
              ),
              Column(
                children: [
                  SizedBox(
                    height: 500,
                  ),
                  Container(
                    height: 190,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(45),
                        topRight: Radius.circular(45),
                      ),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Foodie',
                          style: TextStyle(
                            fontSize: 26,
                            color: Colors.deepPurple,
                            // fontFamily: 'Lobster',
                          ),
                        ),
                        Text(
                          'Enjoy our beautiful delicacies',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black54,
                            // fontFamily: 'Lobster',
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Eat Best -',
                              style: TextStyle(
                                fontSize: 22,
                                color: Colors.black54,
                                // fontFamily: 'Lobster',
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Fast Food ',
                              style: TextStyle(
                                fontSize: 22,
                                color: Colors.deepPurple,
                                // fontFamily: 'Lobster',
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        MaterialButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignupScreen(),
                              ),
                            );
                          },
                          child: Text(
                            'Get Started',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          color: Colors.black,
                          height: 42,
                          minWidth: 260,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Alredy have an account?',
                              style: TextStyle(color: Colors.black54),
                            ),
                            InkResponse(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => LoginScreen(),
                                  ),
                                );
                              },
                              child: Text(
                                'LOGIN',
                                style: TextStyle(color: Colors.deepPurple),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
