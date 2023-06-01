import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:pet_life_gh/constants.dart';
import 'package:pet_life_gh/screens/Home/Components/body.dart';
import 'package:pet_life_gh/screens/Log%20In/Log_In_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool isPasswordVisible = false;
  bool isPasswordSeeable = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 280,
              width: double.infinity,
              decoration: BoxDecoration(color: blue),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 180,
                    ),
                    Text(
                      "Register",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 35,
                        color: white,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Create an account",
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 15,
                        color: grey,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 30),
                  TextField(
                    autocorrect: false,
                    autofocus: false,
                    cursorColor: blue,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: grey, width: 1),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: blue, width: 1),
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      label: Text('Full Name'),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextField(
                    autocorrect: false,
                    autofocus: false,
                    cursorColor: blue,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: grey, width: 1),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        label: Text("Email Address")),
                  ),
                  SizedBox(height: 30),
                  TextField(
                    obscureText: isPasswordVisible ? false : true,
                    autocorrect: false,
                    autofocus: false,
                    cursorColor: blue,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        splashColor: Colors.transparent,
                        onPressed: () {
                          setState(() {
                            isPasswordVisible = !isPasswordVisible;
                          });
                        },
                        icon: isPasswordVisible
                            ? Icon(Icons.visibility_off)
                            : Icon(Icons.visibility),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: grey, width: 1),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: blue, width: 1),
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      label: Text('Password'),
                    ),
                  ),
                  SizedBox(height: 30),
                  TextField(
                    autocorrect: false,
                    autofocus: false,
                    cursorColor: blue,
                    obscureText: isPasswordSeeable ? false : true,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: blue, width: 1),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: grey, width: 1)),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 30,
                        vertical: 20,
                      ),
                      label: Text("Password"),
                      suffixIcon: IconButton(
                        splashColor: Colors.transparent,
                        onPressed: () {
                          setState(() {
                            isPasswordSeeable = !isPasswordSeeable;
                          });
                        },
                        icon: Icon(Icons.visibility),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 50,
                        width: 400,
                        decoration: BoxDecoration(
                          color: green,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Don't have an account?",
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return LogInScreen();
                                  },
                                ),
                              );
                            },
                            child: Text(
                              "Register",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal,
                                  color: green),
                            ),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
