import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:palokawana3/app/pages/product%20pages/cerrado_page.dart';
import 'package:palokawana3/app/pages/product%20pages/santos_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({
    Key? key,
  }) : super(key: key);

  @override
  State<MainPage> createState() => _HomePageState();
}

class _HomePageState extends State<MainPage> {
  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return Center(
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 30, bottom: 11, left: 35, right: 23),
                child: Text(
                  'Sklep',
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
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(35.0, 10.0, 5.0, 8.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          padding: MaterialStateProperty.all<EdgeInsets>(
                            const EdgeInsets.only(
                                top: 11, bottom: 11, left: 23, right: 23),
                          ),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40.0),
                            ),
                          ),
                          backgroundColor: MaterialStateProperty.all<Color>(
                            const Color.fromARGB(255, 160, 80, 48),
                          )),
                      child: Text(
                        'Kawy',
                        style: GoogleFonts.montserrat(
                          fontSize: 16,
                          color: const Color.fromARGB(255, 255, 255, 255),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15.0, 10.0, 8.0, 8.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          padding: MaterialStateProperty.all<EdgeInsets>(
                            const EdgeInsets.only(
                                top: 11, bottom: 11, left: 23, right: 23),
                          ),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40.0),
                            ),
                          ),
                          backgroundColor: MaterialStateProperty.all<Color>(
                            const Color.fromARGB(255, 220, 200, 191),
                          )),
                      child: Text(
                        'Herbaty',
                        style: GoogleFonts.montserrat(
                          fontSize: 16,
                          color: const Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15.0, 10.0, 10.0, 8.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          padding: MaterialStateProperty.all<EdgeInsets>(
                            const EdgeInsets.only(
                                top: 11, bottom: 11, left: 23, right: 23),
                          ),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40.0),
                            ),
                          ),
                          backgroundColor: MaterialStateProperty.all<Color>(
                            const Color.fromARGB(255, 220, 200, 191),
                          )),
                      child: Text(
                        'Akcesoria',
                        style: GoogleFonts.montserrat(
                          fontSize: 16,
                          color: const Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  ProductMainPage(
                    'images/Cerrado.png',
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => CerradoPage(),
                        ),
                      );
                    },
                  ),
                  ProductMainPage(
                    'images/Kolumbia.png',
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => SantosPage(),
                        ),
                      );
                    },
                  ),
                ],
              ),
              Row(
                children: const [
                  Padding(
                    padding:
                        EdgeInsets.only(top: 0, bottom: 0, left: 33, right: 15),
                    child: ProductName('Brasil Cerrado'),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(top: 0, bottom: 0, left: 1, right: 1),
                    child: ProductName('Kolumbia Excelso'),
                  ),
                ],
              ),
              Row(
                children: const [
                  Padding(
                    padding:
                        EdgeInsets.only(top: 0, bottom: 0, left: 0, right: 1),
                    child: ProductPrice('33zł - 113zł'),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(top: 0, bottom: 0, left: 7, right: 1),
                    child: ProductPrice('39zł - 133zł'),
                  ),
                ],
              ),
              Row(
                children: [
                  ProductMainPage(
                    'images/Dobrystart.png',
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => SantosPage(),
                        ),
                      );
                    },
                  ),
                  ProductMainPage(
                    'images/Santos.png',
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => SantosPage(),
                        ),
                      );
                    },
                  ),
                ],
              ),
              Row(
                children: const [
                  Padding(
                    padding:
                        EdgeInsets.only(top: 0, bottom: 0, left: 45, right: 27),
                    child: ProductName('Dobry Start'),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(top: 0, bottom: 0, left: 27, right: 1),
                    child: ProductName('Brasil Santos'),
                  ),
                ],
              ),
              Row(
                children: const [
                  Padding(
                    padding:
                        EdgeInsets.only(top: 0, bottom: 0, left: 0, right: 1),
                    child: ProductPrice('39zł - 68zł'),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(top: 0, bottom: 0, left: 7, right: 1),
                    child: ProductPrice('27zł - 84zł'),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}

class ProductPrice extends StatelessWidget {
  const ProductPrice(
    this.title, {
    Key? key,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0, bottom: 1, left: 44, right: 76),
      child: Text(
        title,
        style: GoogleFonts.montserrat(fontSize: 14),
      ),
    );
  }
}

class ProductName extends StatelessWidget {
  const ProductName(
    this.title, {
    Key? key,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => SantosPage(),
          ),
        );
      },
      child: Text(
        title,
        style: GoogleFonts.cinzel(
          fontSize: 18,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class ProductMainPage extends StatelessWidget {
  const ProductMainPage(
    this.image, {
    Key? key,
    required this.onTap,
  }) : super(key: key);

  final String image;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 22, bottom: 1, left: 43, right: 8),
      child: InkWell(
        onTap: () {
          onTap();
        },
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage(image),
            ),
          ),
          height: 192,
          width: 147,
        ),
      ),
    );
  }
}
