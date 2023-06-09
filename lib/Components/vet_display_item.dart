import 'package:flutter/material.dart';

import '../constants.dart';

class VetDisplayItem extends StatelessWidget {
  const VetDisplayItem({
    Key? key,
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
                    image: AssetImage('asset/images/vet_pic.png'),
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
                    'Dr. Lydia Akuffo',
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
                      Icon(Icons.star_rate_rounded, color: Colors.amber),
                      Icon(Icons.star_rate_rounded, color: Colors.amber),
                      Icon(Icons.star_rate_rounded, color: Colors.amber),
                      Icon(Icons.star_rate_rounded, color: Colors.amber),
                      Icon(Icons.star_rate_rounded, color: Colors.amber),
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
                        '4 Years',
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
