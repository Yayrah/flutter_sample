// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:pet_life_gh/Components/bottom_nav_bar.dart';
import 'package:pet_life_gh/screens/My%20Cart/cart_page.dart';
import 'package:pet_life_gh/screens/Vet/Components/body.dart';

import '../../constants.dart';
import '../../enum.dart';

class VetScreen extends StatelessWidget {
  const VetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        elevation: 0.0,
        title: Text(
          'PETLIFEGH',
          style: TextStyle(
            color: blue,
            fontSize: 25,
            fontWeight: FontWeight.w800,
          ),
        ),
        centerTitle: true,
        actions: [
          GestureDetector(
            onTap: () {},
            child: Icon(Icons.person, color: blue),
          ),
          SizedBox(width: 12),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CartPage(),
                ),
              );
            },
            child: Icon(Icons.shopping_cart_rounded, color: blue),
          ),
          SizedBox(width: 15),
        ],
      ),
      drawer: Drawer(),
      body: Body(),
      backgroundColor: white,
      bottomNavigationBar: BottomNavBar(selectedIcon: BottomNavState.vet),
    );
  }
}
