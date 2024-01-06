import 'package:flutter/material.dart';
import 'package:foodappcollege/2_login_signup/signup_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController phoneno = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 300,
              width: double.infinity,
              color: Colors.black,
              child: Image.asset(
                'assets/images/food 2.jpg',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 14,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Text(
                'Login to your account',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: TextField(
                controller: phoneno,
                decoration: InputDecoration(
                  hintText: 'phone no',
                  hintStyle: TextStyle(color: Colors.black54),
                  constraints: BoxConstraints(maxHeight: 50, maxWidth: 330),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.amber),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: TextField(
                controller: password,
                decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: TextStyle(color: Colors.black54),
                  constraints: BoxConstraints(maxHeight: 50, maxWidth: 330),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.amber),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 200),
              child: Text(
                'Forgot your password?',
                style: TextStyle(color: Colors.white54, fontSize: 16),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: MaterialButton(
                onPressed: () {},
                child: Text(
                  'Login',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                color: Colors.red,
                height: 42,
                minWidth: 330,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 120,
                ),
                Text(
                  'Do not have an account?',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                InkResponse(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignupScreen(),
                      ),
                    );
                  },
                  child: Text(
                    'Sign up',
                    style: TextStyle(color: Colors.red, fontSize: 16),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
