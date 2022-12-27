// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:palokawana3/app/pages/my_controller.dart';
import 'package:palokawana3/app/pages/search_page.dart';

class CerradoPage extends StatelessWidget {
  CerradoPage({
    Key? key,
  }) : super(key: key);

  final MyController c = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFf5e1d3),
      appBar: AppBar(
        title: Text(
          'Brasil Cerrado',
          style: GoogleFonts.cinzel(
              fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color.fromARGB(255, 220, 200, 191),
        actions: [
          IconButton(
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (_) => const SearchPage()),
            ),
            icon: const Icon(
              Icons.search,
              size: 32,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 30, bottom: 10, left: 30, right: 30),
            child: Container(
              height: 363,
              width: 315,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: const Image(
                image: AssetImage('images/Cerrado.png'),
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 15, bottom: 10, left: 30, right: 10),
                child: Text(
                  'Brasil Cerrado',
                  style: GoogleFonts.cinzel(
                      fontSize: 25,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 15, bottom: 10, left: 40, right: 30),
                child: Text(
                  '100% Arabika',
                  style: GoogleFonts.montserrat(fontSize: 15),
                ),
              ),
            ],
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 8, bottom: 10, left: 30, right: 30),
            child: Text(
              'Czekolada, karmel, owoce jagodowe, orzechy.',
              style: GoogleFonts.montserrat(fontSize: 15),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 8, bottom: 10, left: 30, right: 30),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                'Castanha do Cerrado dzięki naturnalnej obróbce ziaren,  wyróznia się na tle innych swoją słodyczą. W profilu sensorycznym możemy wyczuć nuty mlecznej czekolady, karmelu i jagód. Dla osób, które preferują mleczne kawy będzie to idealne rozwiązanie. Również miłośnicy przelewowych metod zaparzania, odkryją nowe doznania smakowe.',
                textAlign: TextAlign.justify,
                style: GoogleFonts.montserrat(fontSize: 15, height: 2),
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 30, bottom: 10, left: 30, right: 10),
            child: Text(
              'Specyfikacja:',
              style: GoogleFonts.cinzel(
                  fontSize: 22,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 8, bottom: 10, left: 30, right: 1),
                child: Text(
                  'Kraj pochodzenia:',
                  style: GoogleFonts.montserrat(
                      fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 8, bottom: 10, left: 10, right: 10),
                child: Text(
                  '............................................',
                  style: GoogleFonts.montserrat(fontSize: 15),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 8, bottom: 10, left: 1, right: 30),
                child: Text(
                  'Brazylia',
                  style: GoogleFonts.montserrat(fontSize: 15),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 8, bottom: 10, left: 30, right: 1),
                child: Text(
                  'Region:',
                  style: GoogleFonts.montserrat(
                      fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 8, bottom: 10, left: 10, right: 10),
                child: Text(
                  '..................................................',
                  style: GoogleFonts.montserrat(fontSize: 15),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 8, bottom: 10, left: 1, right: 30),
                child: Text(
                  'Cerrado Mineiro',
                  style: GoogleFonts.montserrat(fontSize: 15),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 8, bottom: 10, left: 30, right: 1),
                child: Text(
                  'Wysokość upraw:',
                  style: GoogleFonts.montserrat(
                      fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 8, bottom: 10, left: 10, right: 10),
                child: Text(
                  '.................................',
                  style: GoogleFonts.montserrat(fontSize: 15),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 8, bottom: 10, left: 1, right: 30),
                child: Text(
                  '1100 m.n.p.m',
                  style: GoogleFonts.montserrat(fontSize: 15),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 8, bottom: 10, left: 30, right: 1),
                child: Text(
                  'Obróbka:',
                  style: GoogleFonts.montserrat(
                      fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 8, bottom: 10, left: 10, right: 10),
                child: Text(
                  '............................................................',
                  style: GoogleFonts.montserrat(fontSize: 15),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 8, bottom: 10, left: 1, right: 30),
                child: Text(
                  'Naturalna',
                  style: GoogleFonts.montserrat(fontSize: 15),
                ),
              ),
            ],
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 30, bottom: 20, left: 30, right: 10),
            child: Text(
              'Wielkość opakowania:',
              style: GoogleFonts.cinzel(
                  fontSize: 22,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsets>(
                      const EdgeInsets.only(
                          top: 13, bottom: 13, left: 22, right: 22),
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                    backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(255, 255, 255, 255),
                    )),
                child: Text(
                  '250g',
                  style: GoogleFonts.montserrat(
                    fontSize: 16,
                    color: const Color.fromARGB(255, 160, 80, 48),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsets>(
                      const EdgeInsets.only(
                          top: 13, bottom: 13, left: 22, right: 22),
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                    backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(255, 255, 255, 255),
                    )),
                child: Text(
                  '500g',
                  style: GoogleFonts.montserrat(
                    fontSize: 16,
                    color: const Color.fromARGB(255, 160, 80, 48),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsets>(
                      const EdgeInsets.only(
                          top: 13, bottom: 13, left: 28, right: 28),
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                    backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(255, 255, 255, 255),
                    )),
                child: Text(
                  '1kg',
                  style: GoogleFonts.montserrat(
                    fontSize: 16,
                    color: const Color.fromARGB(255, 160, 80, 48),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 40, bottom: 10, left: 30, right: 13),
            child: Text(
              'Ziarna czy zmielona?',
              style: GoogleFonts.cinzel(
                  fontSize: 22,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.all(7),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    // ignore: sort_child_properties_last
                    child: Image.asset('images/coffee-beans.png'),
                    height: 62,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.all(7),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Image.asset('images/coffee-maker.png'),
                    height: 62,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.all(7),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Image.asset('images/chemex.png'),
                    height: 62,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.all(7),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Image.asset('images/aeropress.png'),
                    height: 62,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.all(7),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Image.asset('images/coffee-pot.png'),
                    height: 62,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 1, bottom: 40, left: 40, right: 10),
                child: Text(
                  'Ziarna',
                  style: GoogleFonts.montserrat(fontSize: 12),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 1, bottom: 40, left: 24, right: 10),
                child: Text(
                  'Przelew',
                  style: GoogleFonts.montserrat(fontSize: 12),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 1, bottom: 40, left: 20, right: 10),
                child: Text(
                  'Chemex',
                  style: GoogleFonts.montserrat(fontSize: 12),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 1, bottom: 40, left: 13, right: 10),
                child: Text(
                  'Aeropress',
                  style: GoogleFonts.montserrat(fontSize: 12),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 1, bottom: 40, left: 10, right: 10),
                child: Text(
                  'Kawiarka',
                  style: GoogleFonts.montserrat(fontSize: 12),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(
                width: 30,
              ),
              Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white,
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.add),
                      onPressed: () => c.increment(),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Obx(() => SizedBox(
                        width: 30,
                        child: Text(
                          c.coffee.toString(),
                          style: GoogleFonts.montserrat(fontSize: 30),
                          textAlign: TextAlign.center,
                        ),
                      )),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white,
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.remove),
                      onPressed: () => c.decrement(),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 12, bottom: 10, left: 60, right: 5),
                    child: Text('Cena:',
                        style: GoogleFonts.montserrat(fontSize: 18)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 12, bottom: 10, left: 10, right: 40),
                    child: Text(
                      '33zł',
                      style: GoogleFonts.montserrat(
                          fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100.0),
            child: GestureDetector(
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.all(15),
                margin: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 160, 80, 48),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Center(
                  child: Text(
                    'Dodaj do koszyka',
                    style: GoogleFonts.montserrat(
                      fontSize: 16,
                      color: const Color.fromARGB(255, 255, 255, 255),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
