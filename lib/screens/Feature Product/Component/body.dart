import 'package:flutter/material.dart';
import 'package:pet_life_gh/screens/Add%20Featured%20Product/Component/added_featured_product.dart';

import '../../../constants.dart';

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 30,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => AddFeaturedProduct())));
            },
            child: Container(
              height: 250,
              width: 250,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(11),
                border: Border.all(color: green, width: 1),
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: white,
                  border: Border.all(color: white, width: 5),
                  borderRadius: BorderRadius.circular(11),
                  image: DecorationImage(
                    image: AssetImage('asset/images/boston.jpeg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Name",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: green,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Vizla",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: blue,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Gender",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: green,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Female",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: blue,
                    ),
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Age",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: green,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "5 months",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: blue,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Location",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: green,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "KNUST",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: blue,
                    ),
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            "GHS 7000",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w400,
              color: lightBlue,
            ),
          ),
        ],
      ),
    );
  }
}
