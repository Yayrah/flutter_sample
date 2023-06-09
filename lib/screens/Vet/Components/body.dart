// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:pet_life_gh/Components/vet_display_item.dart';
import 'package:pet_life_gh/constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(17.5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10),
              child: Text(
                'Choose a doctor and consult \nyour problem',
                style: TextStyle(
                  color: black,
                  fontSize: 25,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(height: 15),
            Center(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: grey, width: 1),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  // alignment: Alignment.centerLeft,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.search,
                        color: grey,
                      ),
                      SizedBox(width: 20),
                      Text(
                        "Search Veterinarian's name...",
                        style: TextStyle(
                          color: grey,
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Container(
                  height: 50,
                  width: 57,
                  decoration: BoxDecoration(
                    color: white,
                    border: Border.all(color: grey, width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.mic,
                      color: grey,
                    ),
                  ),
                )
              ],
            )),
            SizedBox(height: 35),
            ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (contect, index) {
                  return VetDisplayItem();
                },
                separatorBuilder: (context, index) {
                  return SizedBox(height: 25);
                },
                itemCount: 6)
          ],
        ),
      ),
    );
  }
}
