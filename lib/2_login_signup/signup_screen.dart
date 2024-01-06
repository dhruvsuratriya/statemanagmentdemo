import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  ///new changes
// nnnn
  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController username = TextEditingController();
  TextEditingController phoneno = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 5,
              ),
              InkResponse(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Sign up account',
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
              SizedBox(
                height: 30,
              ),
              TextField(
                controller: username,
                decoration: InputDecoration(
                  hintText: 'Username',
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
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: phoneno,
                decoration: InputDecoration(
                  hintText: 'Phone no',
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
              SizedBox(
                height: 10,
              ),
              TextField(
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
              SizedBox(
                height: 40,
              ),
              MaterialButton(
                onPressed: () {},
                child: Text(
                  'Sign up',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                color: Colors.red,
                height: 42,
                minWidth: 330,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
              ),
              SizedBox(
                height: 80,
              ),
              Center(
                child: Text(
                  'By clicking Sign uo you agree to the',
                  style: TextStyle(fontSize: 16, color: Colors.white70),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'following',
                    style: TextStyle(fontSize: 16, color: Colors.white70),
                  ),
                  Text(
                    ' Terms and Conditions',
                    style: TextStyle(fontSize: 16, color: Colors.red),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
