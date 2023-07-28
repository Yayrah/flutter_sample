import 'package:flutter/material.dart';
import 'package:pet_life_gh/screens/Pet%20Food%20Item/pet_food_item_page.dart';

import '../../../constants.dart';

class PetFoodItem extends StatefulWidget {
    bool isItemFavourite ;

   PetFoodItem({
    Key? key,
    this.isItemFavourite = false,
  }) : super(key: key);

  @override
  State<PetFoodItem> createState() => _PetFoodItemState();
}

class _PetFoodItemState extends State<PetFoodItem> {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,MaterialPageRoute(builder: (context)=>PetFoodItemPage()));
      },
      child: Container(
        height: 190,
        width: 184,
        color: white,
        padding: EdgeInsets.only(left: 3, right: 20, bottom: 6),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'asset/images/pet_food.png',
              height: 128,
              width: 140,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '\$' + '4.50',
                      style: TextStyle(
                        color: blue,
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      'Pro Plan Vet',
                      style: TextStyle(
                        color: grey,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                GestureDetector(
                    onTap: () {
                      setState(() {
                        widget.isItemFavourite = !widget.isItemFavourite;
                      });
                    },
                    child: Icon(
                      widget.isItemFavourite
                          ? Icons.favorite
                          : Icons.favorite_outline_rounded,
                      color: widget.isItemFavourite ? green : grey,
                      size: 26,
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
