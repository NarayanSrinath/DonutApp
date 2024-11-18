import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DonutTile extends StatelessWidget {
  final String donutFlavour;
  final String donutPrice;
  final String donutPath;
  final donutColor;

  final double borderRadius = 12;
  const DonutTile(
      {super.key,
      required this.donutFlavour,
      required this.donutPrice,
      required this.donutPath,
      required this.donutColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
        decoration: BoxDecoration(
            color: donutColor[50],
            borderRadius: BorderRadius.circular(borderRadius)),
        child: Column(
          children: [
            //donut price
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: donutColor[100],
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(borderRadius),
                          topRight: Radius.circular(borderRadius))),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      '\$$donutPrice',
                      style: GoogleFonts.lato(
                        fontSize: 18,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ),
                ),
              ],
            ),

            //donut picture
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 40.0, vertical: 18),
              child: Image.asset(donutPath),
            ),

            //donut flavour
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                donutFlavour,
                style: GoogleFonts.lato(
                  fontSize: 16,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),

            //brand name

            Text(
              "Baskin Robins",
              style: GoogleFonts.lato(
                textStyle: TextStyle(
                  color: Colors.grey.shade600,
                ),
                fontSize: 14,
                fontStyle: FontStyle.normal,
              ),
            ),

            //love icons + add button

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.favorite,color: Colors.pink.shade400,)),

                IconButton(onPressed: (){}, icon: Icon(Icons.add,color: Colors.grey.shade400,)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
