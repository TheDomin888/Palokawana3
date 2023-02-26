import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SensoryProfile extends StatelessWidget {
  const SensoryProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, bottom: 10, left: 30, right: 30),
      child: Text(
        'Czekolada, karmel, owoce jagodowe, orzechy.',
        style: GoogleFonts.montserrat(fontSize: 15),
      ),
    );
  }
}
