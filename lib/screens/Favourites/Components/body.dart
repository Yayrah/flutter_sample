// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:pet_life_gh/screens/Dashboard/Components/pet_food_item.dart';
import 'package:pet_life_gh/screens/Dashboard/Components/petclothingitem.dart';

import '../../../Services/read_data.dart';
import '../../../constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: ReadData().getFavourites(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return SingleChildScrollView(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 22.0, vertical: 15),
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
                      itemCount: allProducts.length,
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2),
                      itemBuilder: (context, index) {
                        return allProducts[index].category == 'Pet Food'
                            ? PetFoodItem(
                                isItemFavourite: allProducts[index].favourite,
                                price: allProducts[index].price,
                                title: allProducts[index].title,
                                image: allProducts[index].image,
                                index: index,
                              )
                            : null;
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
                      itemCount: allProducts.length,
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2),
                      itemBuilder: (context, index) {
                        return allProducts[index].category == 'Pet Clothing'
                            ? PetClothingItem(
                                isItemFavourite: allProducts[index].favourite,
                                index: index,
                                title: allProducts[index].title,
                                image: allProducts[index].image,
                                price: allProducts[index].price,
                              )
                            : null;
                      },
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: EdgeInsets.only(left: 6.0),
                      child: Text(
                        'Pets',
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
                      itemCount: allProducts.length,
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2),
                      itemBuilder: (context, index) {
                        return allProducts[index].category == 'Pets'
                            ? PetClothingItem(
                                isItemFavourite: allProducts[index].favourite,
                                index: index,
                                title: allProducts[index].title,
                                image: allProducts[index].image,
                                price: allProducts[index].price,
                              )
                            : null;
                      },
                    ),
                  ],
                ),
              ),
            );
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          return Center(child: CircularProgressIndicator());
        });
  }
}
