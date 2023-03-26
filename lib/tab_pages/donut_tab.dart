import 'package:flutter/material.dart';

import '../utils/donut_tile.dart';

class DonutTab extends StatelessWidget {
  // lista de Donuts
  List donutsOnSale = [
    // [ donutFlavor, donutPrice, donutColor, imageName]
    ["Ice Cream", "26", Colors.blue, "assets/images/icecream_donut.png"],
    ["Strawberry", "39", Colors.red, "assets/images/strawberry_donut.png"],
    ["Grape Ape", "63", Colors.purple, "assets/images/grape_donut.png"],
    ["Choco", "72", Colors.brown, "assets/images/chocolate_donut.png"]
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: donutsOnSale.length,
      padding: EdgeInsets.all(12),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.5,
      ),
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
