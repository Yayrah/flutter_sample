// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:pet_life_gh/screens/Dashboard/Components/pet_food_item.dart';
import 'package:pet_life_gh/screens/Dashboard/Components/petclothingitem.dart';

import '../../../constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22.0, vertical: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 6.0),
              child: Text(
                'Pet Food',
                style: TextStyle(
                  color: blue,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(height: 10),
            GridView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: 5
              ,
              shrinkWrap: true,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemBuilder: (context, index) {
                return PetFoodItem(
                  isItemFavourite: true
                );
              },
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(left: 6.0),
              child: Text(
                'Pet Clothing',
                style: TextStyle(
                  color: blue,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(height: 10),
            GridView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: 3,
              shrinkWrap: true,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemBuilder: (context, index) {
                return PetClothingItem(
                  isItemFavourite: true,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
