import 'package:flutter/material.dart';

import '../../../constants.dart';

class PetClothingItem extends StatefulWidget {
  bool isItemFavourite = false;
   PetClothingItem({
    Key? key,
    this.isItemFavourite = false,
  }) : super(key: key);

  @override
  State<PetClothingItem> createState() => _PetClothingItemState();
}

class _PetClothingItemState extends State<PetClothingItem> {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 190,
        width: 180,
        color: white,
        child: Padding(
          padding: const EdgeInsets.only(
            right: 20,
            left: 3,
            bottom: 6,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                "asset/images/pet_clothing.png",
                height: 109,
                width: 163,
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
                        "\$" + "400",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Pro plan vet",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          color: grey,
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
                          : Icons.favorite_border_outlined,
                      color: widget.isItemFavourite ? green : grey,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
