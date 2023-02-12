import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:palokawana3/app/pages/cotroller_page/my_controller.dart';

class CartPage extends StatelessWidget {
  CartPage({super.key});

  final MyController c = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        title: Text(
          'Koszyk',
          style: GoogleFonts.cinzel(
              fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color.fromARGB(255, 220, 200, 191),
      ),
      backgroundColor: const Color.fromARGB(255, 243, 234, 228),
      body: SafeArea(
        child: Builder(
          builder: (context) {
            return Center(
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 30, bottom: 11, left: 50, right: 23),
                    child: Text(
                      'Koszyk',
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
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    width: 600,
                    height: 200,
                    margin: const EdgeInsets.all(30),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(
                              image: AssetImage('images/coffee/Santos.png'),
                            ),
                          ),
                          height: 192,
                          width: 147,
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 15, bottom: 1, left: 15, right: 1),
                              child: Row(
                                children: [
                                  Text(
                                    "Brasil Santos",
                                    style: GoogleFonts.cinzel(
                                        fontSize: 18,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 5, bottom: 5, left: 1, right: 1),
                                  child: Text(
                                    "Wielkość opakowania:",
                                    style: GoogleFonts.poppins(
                                        fontSize: 13, color: Colors.black),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 5, bottom: 5, left: 10, right: 1),
                                  child: Text(
                                    '250g',
                                    style: GoogleFonts.poppins(
                                        fontSize: 13, color: Colors.black),
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(height: 5),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 5, bottom: 5, left: 1, right: 1),
                                  child: Text(
                                    "Ziarna czy zmielona?",
                                    style: GoogleFonts.poppins(
                                        fontSize: 13, color: Colors.black),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 5, bottom: 5, left: 10, right: 1),
                                  child: Text(
                                    'Ziarna',
                                    style: GoogleFonts.poppins(
                                        fontSize: 13, color: Colors.black),
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      width: 30,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        color: const Color.fromARGB(
                                            255, 220, 200, 191),
                                      ),
                                      child: IconButton(
                                        icon: const Icon(Icons.add),
                                        onPressed: () => c.increment(),
                                        iconSize: 20,
                                        padding: const EdgeInsets.only(
                                            top: 5,
                                            bottom: 5,
                                            left: 2,
                                            right: 1),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 12,
                                    ),
                                    Obx(() => SizedBox(
                                          width: 20,
                                          child: Text(
                                            c.coffee.toString(),
                                            style: GoogleFonts.montserrat(
                                                fontSize: 20),
                                            textAlign: TextAlign.center,
                                          ),
                                        )),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      width: 30,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        color: const Color.fromARGB(
                                            255, 220, 200, 191),
                                      ),
                                      child: IconButton(
                                        icon: const Icon(Icons.remove),
                                        onPressed: () => c.decrement(),
                                        iconSize: 20,
                                        padding: const EdgeInsets.only(
                                            top: 5,
                                            bottom: 5,
                                            left: 2,
                                            right: 1),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 12,
                                          bottom: 10,
                                          left: 10,
                                          right: 1),
                                      child: Text('Cena:',
                                          style: GoogleFonts.poppins(
                                              fontSize: 13)),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 12,
                                          bottom: 10,
                                          left: 10,
                                          right: 1),
                                      child: Text(
                                        '27zł',
                                        style: GoogleFonts.poppins(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Text(
                      'Zastosuj kod promocyjny:',
                      style: GoogleFonts.montserrat(fontSize: 17),
                    ),
                  ),
                  const SizedBox(height: 25),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: ('Kod promocyjny'),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      margin: const EdgeInsets.symmetric(horizontal: 145),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text(
                          'Zastosuj kod',
                          style: GoogleFonts.montserrat(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 18.0),
                    child: Expanded(
                      child: Divider(thickness: 0.5, color: Colors.grey),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Suma:',
                          style: GoogleFonts.montserrat(fontSize: 17),
                        ),
                        Text(
                          '309,99zł',
                          style: GoogleFonts.montserrat(fontSize: 17),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Rabat:',
                          style: GoogleFonts.montserrat(fontSize: 17),
                        ),
                        Text(
                          '19,99zł',
                          style: GoogleFonts.montserrat(fontSize: 17),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Dostawa:',
                          style: GoogleFonts.montserrat(fontSize: 17),
                        ),
                        Text(
                          '12,99zł',
                          style: GoogleFonts.montserrat(fontSize: 17),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 18.0),
                    child: Expanded(
                      child: Divider(thickness: 0.5, color: Colors.grey),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Łącznie do zapłaty:',
                          style: GoogleFonts.montserrat(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '342,97zł',
                          style: GoogleFonts.montserrat(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: 190,
                            height: 53,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Center(
                              child: Text(
                                'Kontunuuj zakupy',
                                style: GoogleFonts.montserrat(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: 190,
                            height: 53,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 160, 80, 48),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Center(
                              child: Text(
                                'Przejdź do kasy',
                                style: GoogleFonts.montserrat(
                                  fontSize: 16,
                                  color:
                                      const Color.fromARGB(255, 255, 255, 255),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ]),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
