import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:palokawana3/app/pages/cotroller_page/my_controller.dart';
import 'package:palokawana3/app/pages/product%20pages/dobry_start_page/cubit/dobrystart_cubit.dart';
import 'package:palokawana3/app/pages/product%20pages/dobry_start_page/widgets/grammage_button.dart';

import 'product_button.dart';

class QtyAndPrice extends StatefulWidget {
  const QtyAndPrice({
    super.key,
    required this.c,
    required this.selectedPackage,
    required this.selectedProduct,
  });

  final MyController c;
  final Package? selectedPackage;
  final Product? selectedProduct;

  @override
  State<QtyAndPrice> createState() => _QtyAndPriceState();
}

class _QtyAndPriceState extends State<QtyAndPrice> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DobrystartCubit, DobrystartState>(
      builder: (context, state) {
        return Row(
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
                    onPressed: () => widget.c.increment(),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Obx(() => SizedBox(
                      width: 35,
                      child: Text(
                        widget.c.coffee.toString(),
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
                    onPressed: () => widget.c.decrement(),
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
                      SizedBox(
                        width: 80,
                        child: Text(
                          '${state.price}zł',
                          style: GoogleFonts.montserrat(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(width: 30),
          ],
        );
      },
    );
  }
}
