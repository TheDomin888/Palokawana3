import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GrammageButton extends StatelessWidget {
  const GrammageButton(
      {super.key,
      required this.title,
      required this.isSelected,
      required this.onTap});

  final String title;
  final bool isSelected;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Container(
          height: 45,
          width: 90,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 255, 255, 255),
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
          child: Center(
            child: Text(
              title,
              style: GoogleFonts.montserrat(
                fontSize: 16,
                color: const Color.fromARGB(255, 160, 80, 48),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
