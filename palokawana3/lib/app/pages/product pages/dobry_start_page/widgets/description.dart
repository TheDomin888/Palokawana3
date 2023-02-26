import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:palokawana3/app/pages/product%20pages/product_content.dart';

class Description extends StatelessWidget {
  const Description({
    super.key,
    required this.product,
  });

  final ProductContent product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, bottom: 10, left: 30, right: 30),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Text(
          product.itemDescription,
          textAlign: TextAlign.justify,
          style: GoogleFonts.montserrat(fontSize: 15, height: 2),
        ),
      ),
    );
  }
}
