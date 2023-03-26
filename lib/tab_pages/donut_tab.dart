import 'package:flutter/material.dart';

import '../utils/donut_tile.dart';

class DonutTab extends StatelessWidget {
  // lista de Donuts
  List donutsOnSale = [
    // [ donutFlavor, donutPrice, donutColor, imageName]
    ["Ice Cream", "26", Colors.blue, "lib/images/icecream_donut.png"],
    ["Strawberry", "39", Colors.red, "lib/images/strawberry_donuts.png"],
    ["Grape Ape", "63", Colors.purple, "lib/images/grape_donuts.png"],
    ["Choco", "72", Colors.brown, "lib/images/chocolate_donut.png"]
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: donutsOnSale.length,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (context, index) {
        return DonutTile(
          donutFlavor: donutsOnSale[index][0],
          donutPrice: donutsOnSale[index][1],
          donutColor: donutsOnSale[index][2],
          imageName: donutsOnSale[index][3],
        );
      },
    );
  }
}
