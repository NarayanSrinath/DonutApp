import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PizzaTab extends StatefulWidget {
  const PizzaTab({super.key});

  @override
  State<PizzaTab> createState() => _PizzaTabState();
}

class _PizzaTabState extends State<PizzaTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:  Center(
        child: Text(
                      'Pizza Tab ',
                      style: GoogleFonts.lato(
                        fontSize: 24,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
      ),
    );
  }
}