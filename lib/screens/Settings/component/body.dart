import 'package:flutter/material.dart';
import 'package:pet_life_gh/constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'this is the settings page',
        style:
            TextStyle(color: black, fontSize: 17, fontWeight: FontWeight.w400),
      ),
    );
  }
}
