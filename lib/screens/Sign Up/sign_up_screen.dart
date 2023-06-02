import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:pet_life_gh/constants.dart';
import 'package:pet_life_gh/screens/Log%20In/Log_In_screen.dart';
import 'package:pet_life_gh/screens/Sign%20Up/component/body.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Body(),  
    );
  }
}

