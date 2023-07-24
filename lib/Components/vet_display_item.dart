// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:math';

import 'package:flutter/material.dart';

import '../constants.dart';

class VetDisplayItem extends StatelessWidget {
  final String imageLocation;
  final String name;
  final int experience;
  final int star;

  const VetDisplayItem({
    Key? key,
    required this.imageLocation,
    required this.name,
    required this.experience,
    required this.star,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 134,
        width: 370,
        decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: black.withOpacity(0.08),
                offset: Offset(3, 2),
                blurRadius: 5,
                spreadRadius: 4)
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 134,
              width: 140,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  image: DecorationImage(
                    image: AssetImage(imageLocation),
                    fit: BoxFit.cover,
                  )),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 17),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      color: black,
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      star > 0
                          ? Icon(Icons.star_rate_rounded, color: Colors.amber)
                          : Icon(Icons.star_border_rounded, color: grey),
                      star > 1
                          ? Icon(Icons.star_rate_rounded, color: Colors.amber)
                          : Icon(Icons.star_border_rounded, color: grey),
                      star > 2
                          ? Icon(Icons.star_rate_rounded, color: Colors.amber)
                          : Icon(Icons.star_border_rounded, color: grey),
                      star > 3
                          ? Icon(Icons.star_rate_rounded, color: Colors.amber)
                          : Icon(Icons.star_border_rounded, color: grey),
                      star > 4
                          ? Icon(Icons.star_rate_rounded, color: Colors.amber)
                          : Icon(Icons.star_border_rounded, color: grey),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.extension_sharp,
                        color: green,
                        size: 20,
                      ),
                      SizedBox(width: 4),
                      Text(
                        '$experience Years',
                        style: TextStyle(
                          color: grey,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
