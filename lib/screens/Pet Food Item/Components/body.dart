// ignore_for_file: prefer_const_constructors

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class Body extends StatefulWidget {
  const Body({
    super.key,
  });

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int carouselItemIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              CarouselSlider.builder(
                  itemCount: 3,
                  itemBuilder: (context, index, realIndex) {
                    return Container(
                      height: 500,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: grey,
                          image: DecorationImage(
                              image: AssetImage(
                                'asset/images/pet_food.png',
                              ),
                              fit: BoxFit.cover)),
                    );
                  },
                  options: CarouselOptions(
                    height: 500,
                    autoPlay: false,
                    enlargeCenterPage: false,
                    onPageChanged: (index, reason) {
                      setState(() {
                        carouselItemIndex = index;
                        print(carouselItemIndex);
                      });
                    },
                  )),
              Positioned(
                bottom: 25,
                left: 195,
                child: SizedBox(
                  height: 7,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: ((context, index) {
                        return Container(
                          height: 7,
                          width: 7,
                          alignment: Alignment.bottomCenter,
                          decoration: BoxDecoration(
                            color: (index == carouselItemIndex) ? green : white,
                            shape: BoxShape.circle,
                          ),
                        );
                      }),
                      separatorBuilder: (context, index) {
                        return SizedBox(width: 8);
                      },
                      itemCount: 3),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Raised Pet Bowls for Small and mediym doggs, Bamboo Elevated Dog Cat Food and water.",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "\$ 37.41 USD",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 5,
            width: double.infinity,
            color: grey,
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "size",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "2.5KG",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 2,
                  width: double.infinity,
                  color: grey,
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Quality",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  width: 150,
                ),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: grey,
                    ),
                  ),
                  child: Center(
                      child: IconButton(
                          onPressed: () {}, icon: Icon(Icons.remove))),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  height: 30,
                  width: 60,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: grey,
                    ),
                  ),
                  child: Center(child: Text("1")),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: grey,
                    ),
                  ),
                  child: Center(
                      child:
                          IconButton(onPressed: () {}, icon: Icon(Icons.add))),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              height: 300,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Description",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 17,
                          ),
                        ),
                        Spacer(),
                        Icon(
                          Icons.arrow_drop_down,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                      "Project topic: Pets Management Application developed in \n Project topic: Pets Management Application developed .")
                ],
              ),
            ),
          ),
          GestureDetector(
              onTap: () {},
              
              child: Container(
                height: 70,
                width: double.infinity,
                 color: white,
                 alignment: Alignment.center,
                        child: Container(
                      height: 40,
                      width: 150,
                      color:blue,
                      child: Center(
                        child: Text(
                          "Add to cart",
                          style: TextStyle(
                            color: white,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),),)
                  ),
             
                
         
        ],
      ),
    );
  }
}
