import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DonutTile extends StatelessWidget {
  final String donutFlavor;
  final String donutPrice;
  final donutColor;
  final String imageName;

  const DonutTile({
    super.key,
    required this.donutFlavor,
    required this.donutPrice,
    required this.donutColor,
    required this.imageName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: donutColor,
      ),
    );
  }
}
