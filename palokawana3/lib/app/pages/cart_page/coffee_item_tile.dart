import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CoffeeItemTile extends StatelessWidget {
  final String itemName;
  final String itemPrice;
  final String imagePath;
  final color;
  final itemPage;
  void Function()? onPressed;

  CoffeeItemTile({
    super.key,
    required this.itemName,
    required this.itemPrice,
    required this.imagePath,
    required this.color,
    required this.itemPage,
    void Function()? onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: color),
        child: GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => itemPage));
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                imagePath,
                height: 170,
              ),
              Text(
                itemName,
                style: GoogleFonts.cinzel(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                itemPrice,
                style: GoogleFonts.montserrat(fontSize: 12),
              )
            ],
          ),
        ),
      ),
    );
  }
}
