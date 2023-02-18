import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:palokawana3/app/pages/cart_page/cart_page.dart';
import 'package:palokawana3/app/pages/cotroller_page/my_controller.dart';
import 'package:palokawana3/app/pages/product%20pages/dobry_start_page/dobry_start_page.dart';
import 'package:palokawana3/app/pages/product%20pages/product_content.dart';

class CerradoPage extends StatefulWidget {
  CerradoPage({
    Key? key,
  }) : super(key: key);

  @override
  State<CerradoPage> createState() => _CerradoPageState();
}

class _CerradoPageState extends State<CerradoPage> {
  final product = const ProductContent(
    itemName: 'Brasil Cerrado',
    imagePath: 'images/coffee/Cerrado.png',
    itemSpecies: '100% Arabika',
    itemDescription:
        'Castanha do Cerrado dzięki naturnalnej obróbce ziaren,  wyróznia się na tle innych swoją słodyczą. W profilu sensorycznym możemy wyczuć nuty mlecznej czekolady, karmelu i jagód. Dla osób, które preferują mleczne kawy będzie to idealne rozwiązanie. Również miłośnicy przelewowych metod zaparzania, odkryją nowe doznania smakowe.',
    itemCountry: 'Kraj pochodzenia:',
    itemRegion: 'Region:',
    itemCultivation: 'Wysokość upraw:',
    itemProcessing: 'Obróbka:',
  );

  final MyController c = Get.put(MyController());

  Package? selectedPackage;

  Product? selectedProduct;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFf5e1d3),
      appBar: AppBar(
        foregroundColor: Colors.black,
        title: Text(
          product.itemName,
          style: GoogleFonts.cinzel(
              fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color.fromARGB(255, 220, 200, 191),
        actions: [
          IconButton(
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (_) => CartPage()),
            ),
            icon: const Icon(
              Icons.shopping_bag_outlined,
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
              child: Image.asset(product.imagePath),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 15, bottom: 10, left: 30, right: 10),
                child: Text(
                  product.itemName,
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
                  product.itemSpecies,
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
                product.itemDescription,
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
                    top: 8, bottom: 10, left: 30, right: 5),
                child: Text(
                  product.itemCountry,
                  style: GoogleFonts.montserrat(
                      fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              const Expanded(
                child: Divider(
                    thickness: 0.5, color: Color.fromARGB(255, 51, 49, 49)),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 8, bottom: 10, left: 5, right: 30),
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
                    top: 8, bottom: 10, left: 30, right: 5),
                child: Text(
                  product.itemRegion,
                  style: GoogleFonts.montserrat(
                      fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              const Expanded(
                child: Divider(
                    thickness: 0.5, color: Color.fromARGB(255, 51, 49, 49)),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 8, bottom: 10, left: 5, right: 30),
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
                    top: 8, bottom: 10, left: 30, right: 5),
                child: Text(
                  product.itemCultivation,
                  style: GoogleFonts.montserrat(
                      fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              const Expanded(
                child: Divider(
                    thickness: 0.5, color: Color.fromARGB(255, 51, 49, 49)),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 8, bottom: 10, left: 5, right: 30),
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
                    top: 8, bottom: 10, left: 30, right: 5),
                child: Text(
                  product.itemProcessing,
                  style: GoogleFonts.montserrat(
                      fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              const Expanded(
                child: Divider(
                    thickness: 0.5, color: Color.fromARGB(255, 51, 49, 49)),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 8, bottom: 10, left: 5, right: 30),
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
          Builder(builder: (context) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GrammageButton(
                  onTap: (package) {
                    // context.read<DetailsCubit>().selectPackage(package);
                    setState(
                      () {
                        selectedPackage = package;
                      },
                    );
                  },
                ),
              ],
            );
          }),
          //
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
              ProductButton(
                onTap: (product) {
                  setState(
                    () {
                      selectedProduct = product;
                    },
                  );
                },
              )
            ],
          ),
          const SizedBox(height: 30),

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
                        width: 35,
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
              const SizedBox(width: 20),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 12, bottom: 10, left: 20, right: 5),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 60,
                          child: Text('Cena:',
                              style: GoogleFonts.montserrat(fontSize: 18)),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 80,
                    child: Text(
                      '${selectedPackage?.price ?? 0}zł',
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

class Package {
  final String weight;
  final int price;

  Package({
    required this.weight,
    required this.price,
  });
}

class GrammageButton extends StatefulWidget {
  final void Function(Package) onTap;

  const GrammageButton({super.key, required this.onTap});

  @override
  State<GrammageButton> createState() => _GrammageButtonState();
}

class _GrammageButtonState extends State<GrammageButton> {
  final packages = [
    Package(weight: '250g', price: 33),
    Package(weight: '500g', price: 66),
    Package(weight: '1kg', price: 120),
  ];
  int? selectedPackageIndex;

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          for (final package in packages) ...[
            Builder(builder: (context) {
              final indexOfPackage = packages.indexOf(package);
              final isSelected = selectedPackageIndex == indexOfPackage;
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedPackageIndex = indexOfPackage;
                  });
                  widget.onTap(package);
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Container(
                    height: 45,
                    width: 90,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                          color: isSelected
                              ? Colors.grey.shade300
                              : Colors.grey.shade200),
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
                        package.weight.toString(),
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
            }),
          ],
        ],
      );
    });
  }
}

class Product {
  final Image image;
  final String title;
  final int price;

  Product({
    required this.image,
    required this.title,
    required this.price,
  });
}

class ProductButton extends StatefulWidget {
  final void Function(Product) onTap;

  const ProductButton({super.key, required this.onTap});

  @override
  State<ProductButton> createState() => _ProductButtonState();
}

class _ProductButtonState extends State<ProductButton> {
  final products = [
    Product(
      image: Image.asset('images/icons/coffee-beans.png'),
      title: 'Ziarna',
      price: 0,
    ),
    Product(
      image: Image.asset('images/icons/aeropress.png'),
      title: 'Aeropress',
      price: 0,
    ),
    Product(
      image: Image.asset('images/icons/chemex.png'),
      title: 'Chemex',
      price: 0,
    ),
    Product(
      image: Image.asset('images/icons/coffee-maker.png'),
      title: 'Przelew',
      price: 0,
    ),
    Product(
      image: Image.asset('images/icons/coffee-pot.png'),
      title: 'Ziarna',
      price: 0,
    ),
  ];

  int? selectedProductIndex;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Builder(
        builder: (context) {
          return Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                for (final product in products) ...[
                  Builder(
                    builder: (context) {
                      final indexOfProduct = products.indexOf(product);
                      final isSelected = selectedProductIndex == indexOfProduct;
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedProductIndex = indexOfProduct;
                          });
                          widget.onTap(product);
                        },
                        child: Container(
                          padding: const EdgeInsets.all(7),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                                color: isSelected
                                    ? Colors.grey.shade300
                                    : Colors.grey.shade200),
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
                          height: 62,
                          child: product.image,
                        ),
                      );
                    },
                  ),
                ]
              ],
            ),
          );
        },
      ),
    );
  }
}
