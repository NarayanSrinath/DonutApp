import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BurgerTab extends StatefulWidget {
  const BurgerTab({super.key});

  @override
  State<BurgerTab> createState() => _BurgerTabState();
}

class _BurgerTabState extends State<BurgerTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:  Center(
        child: Text(
                      'Burger Tab ',
                      style: GoogleFonts.lato(
                        fontSize: 24,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
      ),
    );
  }
}