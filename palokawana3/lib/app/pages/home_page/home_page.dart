import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:palokawana3/app/pages/cart_page/cart_page.dart';
import 'package:palokawana3/app/pages/main_page/main_page.dart';
import 'package:palokawana3/app/pages/profile_page/profile_page.dart';
import 'package:palokawana3/app/pages/search_page/search_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Builder(builder: (context) {
          if (_currentIndex == 0) {
            return Text(
              'Kawy',
              style: GoogleFonts.cinzel(
                fontSize: 25,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            );
          }
          if (_currentIndex == 1) {
            return Text(
              'Szukaj',
              style: GoogleFonts.cinzel(
                fontSize: 25,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            );
          }
          if (_currentIndex == 2) {
            return Text(
              'Profil',
              style: GoogleFonts.cinzel(
                fontSize: 25,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            );
          }
          if (_currentIndex == 3) {
            return Text(
              'Koszyk',
              style: GoogleFonts.cinzel(
                fontSize: 25,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            );
          }
          return const SizedBox.shrink();
        }),
        actions: [
          Padding(
            padding:
                const EdgeInsets.only(top: 1, bottom: 1, left: 1, right: 10),
            child: IconButton(
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => const SearchPage()),
              ),
              icon: const Icon(
                Icons.search,
                size: 32,
                color: Colors.black,
              ),
            ),
          ),
        ],
        backgroundColor: const Color.fromARGB(255, 220, 200, 191),
      ),
      bottomNavigationBar: Container(
        clipBehavior: Clip.hardEdge,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30),
            topLeft: Radius.circular(30),
          ),
        ),
        child: BottomNavigationBar(
          onTap: (newIndex) {
            setState(() {
              _currentIndex = newIndex;
            });
          },
          currentIndex: _currentIndex,
          backgroundColor: const Color.fromARGB(255, 220, 200, 191),
          type: BottomNavigationBarType.fixed,
          iconSize: 30,
          unselectedFontSize: 12,
          selectedFontSize: 12,
          fixedColor: Colors.black,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Główna'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Szukaj'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profil'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart), label: 'Koszyk'),
          ],
        ),
      ),
      backgroundColor: const Color(0xFFf5e1d3),
      body: Builder(builder: (context) {
        if (_currentIndex == 0) {
          return const MainPage();
        }
        if (_currentIndex == 1) {
          return const SearchPage();
        }
        if (_currentIndex == 2) {
          return const ProfilePage();
        }
        if (_currentIndex == 3) {
          return CartPage();
        }
        return const SizedBox.shrink();
      }),
    );
  }
}
