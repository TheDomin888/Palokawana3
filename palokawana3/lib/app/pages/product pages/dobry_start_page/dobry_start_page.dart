import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:palokawana3/app/pages/cart_page/cart_page.dart';
import 'package:palokawana3/app/pages/cotroller_page/my_controller.dart';
import 'package:palokawana3/app/pages/product%20pages/dobry_start_page/cubit/dobrystart_cubit.dart';
import 'package:palokawana3/app/pages/product%20pages/product_content.dart';

import 'widgets/add_to_cart_button.dart';
import 'widgets/beans_title.dart';
import 'widgets/description.dart';
import 'widgets/grammage_button.dart';
import 'widgets/grammage_title.dart';
import 'widgets/product_button.dart';
import 'widgets/qty_and_price.dart';
import 'widgets/sensory_profile.dart';
import 'widgets/specification.dart';

class DobryStartPage extends StatefulWidget {
  const DobryStartPage({
    Key? key,
  }) : super(key: key);

  @override
  State<DobryStartPage> createState() => _DobryStartPageState();
}

class _DobryStartPageState extends State<DobryStartPage> {
  final product = const ProductContent(
    itemName: 'Dobry Start',
    imagePath: 'images/coffee/Dobrystart.png',
    itemSpecies: 'Arabika/Robusta',
    itemDescription:
        'Swój wyjątkowy aromat i smak zawdzięcza dzięki połączeniu dwóch gatunków ziaren: brazylijskiej Fazendy da Lagoa czyli Arabica, która charakteryzuje się owocowym aromatem oraz delikatną kwaskowatością oraz indyjskiej Robusta Cherry nadająca wyrazisty charakter i odpowiedni poziom kofeiny. Owocowe nuty smakowe ziaren Arabica uszlachetniają smak swoim intensywnym aromatem, a Robusta przez większą zawartość kofeiny delikatnie pobudza. Sprawdza się jako idealne espresso lub w kawiarce.',
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
    return BlocProvider(
      create: (context) => DobrystartCubit(),
      child: BlocBuilder<DobrystartCubit, DobrystartState>(
        builder: (context, state) {
          return Scaffold(
            backgroundColor: const Color.fromARGB(255, 243, 234, 228),
            appBar: AppBar(
              foregroundColor: Colors.black,
              title: Text(
                product.itemName,
                style: GoogleFonts.cinzel(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              backgroundColor: const Color.fromARGB(255, 220, 200, 191),
              actions: [
                IconButton(
                  onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => CartPage()),
                  ),
                  icon: const Icon(
                    Icons.shopping_cart,
                    size: 32,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            body: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      top: 30, bottom: 10, left: 30, right: 30),
                  child: Container(
                    height: 363,
                    width: 315,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Image(image: AssetImage(product.imagePath)),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 15, bottom: 10, left: 30, right: 60),
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
                          top: 15, bottom: 10, left: 10, right: 30),
                      child: Text(
                        product.itemSpecies,
                        style: GoogleFonts.montserrat(fontSize: 15),
                      ),
                    ),
                  ],
                ),
                const SensoryProfile(),
                Description(product: product),
                Specification(product: product),
                const GrammageTitle(),
                Builder(builder: (context) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GrammageButtons(
                        onTap: (package) {
                          setState(() {
                            selectedPackage = package;
                          });
                        },
                      ),
                    ],
                  );
                }),
                const BeansTitle(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ProductButtons(
                      onTap: (product) {
                        // setState(
                        //   () {
                        //     selectedProduct = product;
                        //   },
                        // );
                      },
                    )
                  ],
                ),
                const SizedBox(height: 30),
                QtyAndPrice(
                  c: c,
                  selectedPackage: selectedPackage,
                  selectedProduct: selectedProduct,
                ),
                const AddToCartButton(),
              ],
            ),
          );
        },
      ),
    );
  }
}

class GrammageButtons extends StatefulWidget {
  final void Function(Package) onTap;

  const GrammageButtons({super.key, required this.onTap});

  @override
  State<GrammageButtons> createState() => _GrammageButtonsState();
}

class _GrammageButtonsState extends State<GrammageButtons> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DobrystartCubit, DobrystartState>(
      builder: (context, state) {
        final packages = state.packages;
        return Builder(builder: (context) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              for (final package in packages) ...[
                Builder(builder: (context) {
                  final indexOfPackage = packages.indexOf(package);
                  final isSelected =
                      state.selectedPackageIndex == indexOfPackage;
                  return GrammageButton(
                    title: package.weight.toString(),
                    isSelected: isSelected,
                    onTap: () {
                      context
                          .read<DobrystartCubit>()
                          .selectNewPackageIndex(indexOfPackage);
                      widget.onTap(package);
                    },
                  );
                }),
              ],
            ],
          );
        });
      },
    );
  }
}

class ProductButtons extends StatefulWidget {
  final void Function(Product) onTap;

  const ProductButtons({super.key, required this.onTap});

  @override
  State<ProductButtons> createState() => _ProductButtonsState();
}

class _ProductButtonsState extends State<ProductButtons> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DobrystartCubit, DobrystartState>(
      builder: (context, state) {
        final products = state.products;
        return Builder(
          builder: (context) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                for (final product in products) ...[
                  Builder(
                    builder: (context) {
                      final indexOfProduct = products.indexOf(product);
                      final isSelected =
                          state.selectedProductIndex == indexOfProduct;
                      return ProductButton(
                          image: product.image,
                          title: product.title.toString(),
                          isSelected: isSelected,
                          onTap: () {
                            context
                                .read<DobrystartCubit>()
                                .selectNewProductIndex(indexOfProduct);
                          });
                    },
                  ),
                ]
              ],
            );
          },
        );
      },
    );
  }
}
