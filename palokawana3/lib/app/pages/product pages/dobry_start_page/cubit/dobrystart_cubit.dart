import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';
import 'package:palokawana3/app/pages/product%20pages/dobry_start_page/widgets/grammage_button.dart';

import '../widgets/product_button.dart';

part 'dobrystart_state.dart';

class DobrystartCubit extends Cubit<DobrystartState> {
  DobrystartCubit()
      : super(DobrystartState(
          packages: [
            Package(weight: '250g', price: 33),
            Package(weight: '500g', price: 66),
            Package(weight: '1kg', price: 120),
          ],
          selectedPackageIndex: null,
          selectedProductIndex: null,
          products: [
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
          ],
        ));

  Future<void> selectNewPackageIndex(int? newValue) async {
    emit(
      DobrystartState(
        selectedPackageIndex: newValue,
        selectedProductIndex: newValue,
        packages: state.packages,
        products: state.products,
      ),
    );
  }

  Future<void> selectNewProductIndex(int? newValue) async {
    emit(
      DobrystartState(
        selectedPackageIndex: newValue,
        selectedProductIndex: newValue,
        packages: state.packages,
        products: state.products,
      ),
    );
  }
}
