import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 243, 234, 228),
      appBar: AppBar(
        foregroundColor: Colors.black,
        title: Text(
          'Ustawienia',
          style: GoogleFonts.cinzel(
              fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color.fromARGB(255, 220, 200, 191),
      ),
      body: ListView(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 50, bottom: 5, left: 36, right: 23),
            child: Text(
              'Ustawienia',
              style: GoogleFonts.montserrat(
                fontSize: 32,
                shadows: [
                  Shadow(
                      color: Colors.black.withOpacity(0.4),
                      offset: const Offset(2, 3),
                      blurRadius: 8),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            margin:
                const EdgeInsets.only(top: 10, bottom: 11, left: 38, right: 38),
            height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                      bottom: 11,
                      left: 20,
                    ),
                    child: Text(
                      'Moje zamówienia',
                      style: GoogleFonts.montserrat(
                          fontSize: 17, color: Colors.black),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 8, bottom: 50, left: 100, right: 10),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.keyboard_arrow_right_outlined,
                      size: 40,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            margin:
                const EdgeInsets.only(top: 10, bottom: 11, left: 38, right: 38),
            height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 10, bottom: 11, left: 20, right: 100),
                    child: Text(
                      'Data urodzenia',
                      style: GoogleFonts.montserrat(
                          fontSize: 17, color: Colors.black),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 8, bottom: 50, left: 10, right: 10),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.keyboard_arrow_right_outlined,
                      size: 40,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            margin:
                const EdgeInsets.only(top: 10, bottom: 11, left: 38, right: 38),
            height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 10, bottom: 11, left: 20, right: 100),
                    child: Text(
                      'Zmień hasło',
                      style: GoogleFonts.montserrat(
                          fontSize: 17, color: Colors.black),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 8, bottom: 50, left: 10, right: 10),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.keyboard_arrow_right_outlined,
                      size: 40,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            margin: const EdgeInsets.only(
                top: 250, bottom: 11, left: 38, right: 38),
            height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 10, bottom: 11, left: 20, right: 100),
                    child: Text(
                      'Usuń konto',
                      style: GoogleFonts.montserrat(
                          fontSize: 17,
                          color: const Color.fromARGB(255, 233, 0, 0),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 8, bottom: 50, left: 10, right: 10),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.keyboard_arrow_right_outlined,
                      size: 40,
                      color: Color.fromARGB(255, 233, 0, 0),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
