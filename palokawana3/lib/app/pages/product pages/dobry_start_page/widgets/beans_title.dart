import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BeansTitle extends StatelessWidget {
  const BeansTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, bottom: 20, left: 30, right: 13),
      child: Text(
        'Ziarna czy zmielona?',
        style: GoogleFonts.cinzel(
            fontSize: 22, color: Colors.black, fontWeight: FontWeight.bold),
      ),
    );
  }
}
