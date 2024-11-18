import 'package:donutapp/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class DonutTab extends StatefulWidget {
  const DonutTab({super.key});

  @override
  State<DonutTab> createState() => _DonutTabState();
}

class _DonutTabState extends State<DonutTab> {
  List donutsOnSale = [
    // [ donutFlavor, donutPrice, donutColor, imageName ]
    ["Ice Cream", "36", Colors.blue, "lib/assets/images/icecream_donut.png"],
    ["Strawberry", "45", Colors.red, "lib/assets/images/strawberry_donut.png"],
    ["Grape Ape", "84", Colors.purple, "lib/assets/images/grape_donut.png"],
    ["Choco", "95", Colors.brown, "lib/assets/images/chocolate_donut.png"],
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: donutsOnSale.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 1 / 1.6),
        itemBuilder: (context, index) {
          return DonutTile(
              donutFlavour: donutsOnSale[index][0],
              donutPrice: donutsOnSale[index][1],
              donutPath: donutsOnSale[index][3],
              donutColor: donutsOnSale[index][2]);
        });
  }
}
