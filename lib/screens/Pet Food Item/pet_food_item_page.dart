import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:pet_life_gh/Components/default_back_button.dart';
import 'package:pet_life_gh/constants.dart';
import 'package:pet_life_gh/screens/Pet%20Food%20Item/Components/body.dart';

class PetFoodItemPage extends StatefulWidget {
  const PetFoodItemPage({super.key});

  @override
  State<PetFoodItemPage> createState() => _PetFoodItemPageState();
}
int categoryActiveIndex = 0;

class _PetFoodItemPageState extends State<PetFoodItemPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: white,
        leading: DefaultBackButton(),
        actions: [
          Icon(
            Icons.shopping_cart_rounded,
            color: blue,
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: Body(),

    );
  }
}


