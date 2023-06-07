import 'package:flutter/material.dart';
import 'package:pet_life_gh/Components/cart_item.dart';

import '../../../constants.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CartItem(),
        ListView.separated(
          shrinkWrap: true,
            itemBuilder: (context, index) {
              return CartItem();
            },
            separatorBuilder: (context, index) {
              return SizedBox(
                height: 0,
              );
            },
            itemCount: 2),
      ],
    );
  }
}
