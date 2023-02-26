import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductButton extends StatelessWidget {
  const ProductButton({
    super.key,
    required this.title,
    required this.isSelected,
    required this.onTap,
    required this.image,
  });

  final String title;
  final bool isSelected;
  final void Function()? onTap;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            margin: const EdgeInsets.all(8),
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                  color:
                      isSelected ? Colors.grey.shade300 : Colors.grey.shade200),
              boxShadow: isSelected
                  ? [
                      BoxShadow(
                        color: Colors.grey.shade300,
                        offset: const Offset(1, 5),
                        blurRadius: 10,
                        spreadRadius: 1,
                      ),
                      const BoxShadow(
                        color: Colors.white,
                        offset: Offset(-2, -2),
                        blurRadius: 6,
                        spreadRadius: -2,
                      ),
                    ]
                  : [
                      BoxShadow(
                        color: Colors.grey.shade500,
                        offset: const Offset(5, 5),
                        blurRadius: 13,
                        spreadRadius: 1,
                      ),
                      const BoxShadow(
                        color: Colors.white,
                        offset: Offset(-1, -1),
                        blurRadius: 10,
                        spreadRadius: -3,
                      ),
                    ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(6.0),
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(image),
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 5),
        Text(title)
      ],
    );
  }
}

class Product {
  final String image;
  final String title;
  final int price;

  Product({
    required this.image,
    required this.title,
    required this.price,
  });
}
