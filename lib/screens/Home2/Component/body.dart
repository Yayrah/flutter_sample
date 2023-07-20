// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:pet_life_gh/constants.dart';
import 'package:pet_life_gh/screens/Home2/Component/featured_product_item.dart';

import 'new_arrival_item.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 45,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome!",
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w600,
                          color: blue),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Explore Amazing \n Offers!",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w400,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Get your dream pet nationwide",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 50,
                        width: 105,
                        decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(7),
                            border: Border.all(color: grey)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "SHOP NOW",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: blue),
                            ),
                            Icon(Icons.arrow_right_alt_rounded, color: blue)
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 145,
                width: 133,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(7),
                  border: Border.all(color: green, width: 1),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: white,
                    border: Border.all(color: white, width: 5),
                    borderRadius: BorderRadius.circular(7),
                    image: DecorationImage(
                      image: AssetImage('asset/images/boxer.jpeg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              // CircleAvatar(
              //   radius: 70,
              //   backgroundImage: AssetImage('asset/images/boxer.jpeg'),
              // )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 150,
            width: double.infinity,
            decoration: BoxDecoration(
              color: grey,
              image: DecorationImage(
                image: AssetImage('asset/images/home.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                color: black.withOpacity(0.45),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "We always strive to \n provide our  with the most\n knowledgeable",
                    style: TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w500, color: grey),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "and UP TO DATE CARE\n POSSIBLE ",
                    style: TextStyle(
                        fontWeight: FontWeight.w500, color: Colors.orange),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "Featured Products",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 30,
          ),
          CarouselSlider.builder(
            itemCount: featuredProdNames.length - 1,
            itemBuilder: (context, index, i) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FeaturedProductItem(
                    name: featuredProdNames[index],
                    imageLocation: featuredProdPics[index],
                  ),
                  SizedBox(width: 13),
                  FeaturedProductItem(
                    name: featuredProdNames[index + 1],
                    imageLocation: featuredProdPics[index + 1],
                  ),
                ],
              );
            },
            options: CarouselOptions(
              viewportFraction: 1,
              height: 208,
              autoPlayInterval: Duration(seconds: 5),
              scrollDirection: Axis.horizontal,
              autoPlay: true,
            ),
          ),
          SizedBox(height: 50),
          Text(
            "New Arrivals",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 10),
          Text(
            "Explore New Pets",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          CarouselSlider.builder(
            itemCount: newArrivalNames.length - 1,
            itemBuilder: (context, index, i) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  NewArrivalItem(
                    imageLocation: newArrivalPics[index],
                    gender: NewArrivalGender[index],
                    name: newArrivalNames[index],
                    price: NewArrivalPrice[index],
                  ),
                  SizedBox(
                    width: 13,
                  ),
                  NewArrivalItem(
                    imageLocation: newArrivalPics[index + 1],
                    gender: NewArrivalGender[index + 1],
                    name: newArrivalNames[index + 1],
                    price: NewArrivalPrice[index + 1],
                  )
                ],
              );
            },
            options: CarouselOptions(
              viewportFraction: 1,
              height: 300,
              autoPlay: true,
              autoPlayInterval: Duration(
                seconds: 5,
              ),
              scrollDirection: Axis.horizontal,
            ),
          ),
          SizedBox(
            height: 30,
          )
        ],
      ),
    );
  }
}
