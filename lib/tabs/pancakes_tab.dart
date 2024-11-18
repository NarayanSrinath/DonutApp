import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PancakesTab extends StatefulWidget {
  const PancakesTab({super.key});

  @override
  State<PancakesTab> createState() => _PancakesTabState();
}

class _PancakesTabState extends State<PancakesTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:  Center(
        child: Text(
                      'Pancake Tab ',
                      style: GoogleFonts.lato(
                        fontSize: 24,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
      ),
    );
  }
}