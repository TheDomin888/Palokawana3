import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:palokawana3/app/pages/product%20pages/product_content.dart';

class Specification extends StatelessWidget {
  const Specification({
    super.key,
    required this.product,
  });

  final ProductContent product;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              const EdgeInsets.only(top: 30, bottom: 10, left: 30, right: 10),
          child: Text(
            'Specyfikacja:',
            style: GoogleFonts.cinzel(
                fontSize: 22, color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        Row(
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(top: 8, bottom: 10, left: 30, right: 5),
              child: Text(
                product.itemCountry,
                style: GoogleFonts.montserrat(
                    fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            const Expanded(
              child: Divider(
                  thickness: 0.5, color: Color.fromARGB(255, 51, 49, 49)),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 8, bottom: 10, left: 5, right: 30),
              child: Text(
                'Brazylia/Indie',
                style: GoogleFonts.montserrat(fontSize: 15),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(top: 8, bottom: 10, left: 30, right: 5),
              child: Text(
                product.itemRegion,
                style: GoogleFonts.montserrat(
                    fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            const Expanded(
              child: Divider(
                  thickness: 0.5, color: Color.fromARGB(255, 51, 49, 49)),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 8, bottom: 10, left: 5, right: 30),
              child: Text(
                'Sao Paulo',
                style: GoogleFonts.montserrat(fontSize: 15),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(top: 8, bottom: 10, left: 30, right: 5),
              child: Text(
                product.itemCultivation,
                style: GoogleFonts.montserrat(
                    fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            const Expanded(
              child: Divider(
                  thickness: 0.5, color: Color.fromARGB(255, 51, 49, 49)),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 8, bottom: 10, left: 5, right: 30),
              child: Text(
                '800-1350 m.n.p.m',
                style: GoogleFonts.montserrat(fontSize: 15),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(top: 8, bottom: 10, left: 30, right: 5),
              child: Text(
                product.itemProcessing,
                style: GoogleFonts.montserrat(
                    fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            const Expanded(
              child: Divider(
                  thickness: 0.5, color: Color.fromARGB(255, 51, 49, 49)),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 8, bottom: 10, left: 5, right: 30),
              child: Text(
                'Myta',
                style: GoogleFonts.montserrat(fontSize: 15),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
