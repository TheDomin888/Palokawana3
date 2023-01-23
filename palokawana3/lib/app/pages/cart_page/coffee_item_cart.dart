import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/instance_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:palokawana3/app/pages/cotroller_page/my_controller.dart';

class CoffeeItemCart extends StatelessWidget {
  final String itemName;
  final String itemPrice;
  final String imagePath;
  final color;
  final itemPage;
  final String itemType;
  final String itemGrammage;
  final MyController c = Get.put(MyController());

  CoffeeItemCart({
    super.key,
    required this.itemName,
    required this.itemPrice,
    required this.imagePath,
    required this.color,
    required this.itemPage,
    required this.itemType,
    required this.itemGrammage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
              image: DecorationImage(
                image: AssetImage(imagePath),
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
                      itemName,
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
                      itemGrammage,
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
                      itemType,
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
                          color: const Color.fromARGB(255, 220, 200, 191),
                        ),
                        child: IconButton(
                          icon: const Icon(Icons.add),
                          onPressed: () => c.increment(),
                          iconSize: 20,
                          padding: const EdgeInsets.only(
                              top: 5, bottom: 5, left: 2, right: 1),
                        ),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Obx(() => SizedBox(
                            width: 20,
                            child: Text(
                              c.coffee.toString(),
                              style: GoogleFonts.montserrat(fontSize: 20),
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
                          color: const Color.fromARGB(255, 220, 200, 191),
                        ),
                        child: IconButton(
                          icon: const Icon(Icons.remove),
                          onPressed: () => c.decrement(),
                          iconSize: 20,
                          padding: const EdgeInsets.only(
                              top: 5, bottom: 5, left: 2, right: 1),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 12, bottom: 10, left: 10, right: 1),
                        child: Text('Cena:',
                            style: GoogleFonts.poppins(fontSize: 13)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 12, bottom: 10, left: 10, right: 1),
                        child: Text(
                          '27zł',
                          style: GoogleFonts.poppins(
                              fontSize: 15, fontWeight: FontWeight.bold),
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
    );
  }
}
