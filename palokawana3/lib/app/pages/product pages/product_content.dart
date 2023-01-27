import 'package:flutter/material.dart';

class ProductContent extends StatelessWidget {
  final String itemName;
  final String imagePath;
  final String itemSpecies;
  final String itemDescription;
  final String itemCountry;
  final String itemRegion;
  final String itemCultivation;
  final String itemProcessing;

  const ProductContent({
    super.key,
    required this.itemName,
    required this.imagePath,
    required this.itemSpecies,
    required this.itemDescription,
    required this.itemCountry,
    required this.itemRegion,
    required this.itemCultivation,
    required this.itemProcessing,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 363,
      width: 315,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Image(
        image: AssetImage(imagePath),
      ),
    );
  }
}
