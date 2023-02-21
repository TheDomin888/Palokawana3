import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GrammageTitle extends StatelessWidget {
  const GrammageTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, bottom: 20, left: 30, right: 10),
      child: Text(
        'Wielkość opakowania:',
        style: GoogleFonts.cinzel(
            fontSize: 22, color: Colors.black, fontWeight: FontWeight.bold),
      ),
    );
  }
}
