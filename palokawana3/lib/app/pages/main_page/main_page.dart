import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:palokawana3/app/pages/main_page/cart_model.dart';
import 'package:palokawana3/app/pages/cart_page/coffee_item_tile.dart';
import 'package:provider/provider.dart';

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
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 243, 234, 228),
      body: SafeArea(
        child: Builder(
          builder: (context) {
            return Center(
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 15, bottom: 11, left: 35, right: 23),
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
                        padding:
                            const EdgeInsets.fromLTRB(35.0, 10.0, 5.0, 8.0),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                              padding: MaterialStateProperty.all<EdgeInsets>(
                                const EdgeInsets.only(
                                    top: 11, bottom: 11, left: 23, right: 23),
                              ),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
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
                        padding:
                            const EdgeInsets.fromLTRB(15.0, 10.0, 8.0, 8.0),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                              padding: MaterialStateProperty.all<EdgeInsets>(
                                const EdgeInsets.only(
                                    top: 11, bottom: 11, left: 23, right: 23),
                              ),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
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
                        padding:
                            const EdgeInsets.fromLTRB(15.0, 10.0, 10.0, 8.0),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                              padding: MaterialStateProperty.all<EdgeInsets>(
                                const EdgeInsets.only(
                                    top: 11, bottom: 11, left: 23, right: 23),
                              ),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
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
                  const SizedBox(height: 20),
                  Expanded(
                    child: Consumer<CartModel>(
                      builder: (context, value, child) {
                        return GridView.builder(
                          padding: const EdgeInsets.all(12),
                          itemCount: value.shopItems.length,
                          shrinkWrap: true,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 1 / 1.3,
                          ),
                          itemBuilder: (context, index) {
                            return CoffeeItemTile(
                              itemName: value.shopItems[index][0],
                              itemPrice: value.shopItems[index][1],
                              imagePath: value.shopItems[index][2],
                              color: value.shopItems[index][3],
                              itemPage: value.shopItems[index][4],
                            );
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
