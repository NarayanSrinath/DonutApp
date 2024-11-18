import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SmoothieTab extends StatefulWidget {
  const SmoothieTab({super.key});

  @override
  State<SmoothieTab> createState() => _SmoothieTabState();
}

class _SmoothieTabState extends State<SmoothieTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:  Center(
        child: Text(
                      'Smoothie Tab ',
                      style: GoogleFonts.lato(
                        fontSize: 24,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
      ),
    );
  }
}