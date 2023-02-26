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
                image: 'images/icons/coffee-beans.png',
                title: 'Ziarna',
                price: 10,
              ),
              Product(
                image: 'images/icons/aeropress.png',
                title: 'Aeropress',
                price: 102,
              ),
              Product(
                image: 'images/icons/chemex.png',
                title: 'Chemex',
                price: 103,
              ),
              Product(
                image: 'images/icons/coffee-maker.png',
                title: 'Przelew',
                price: 134,
              ),
              Product(
                image: 'images/icons/coffee-pot.png',
                title: 'Kawiarka',
                price: 23,
              ),
            ],
            price: '0'));

  Future<void> selectNewPackageIndex(int? newValue) async {
    int price = 0;
    if (newValue != null) {
      final selectedPackage = state.packages[newValue];
      price = selectedPackage.price;

      if (state.selectedProductIndex != null) {
        final selectedProduct = state.products[state.selectedProductIndex!];
        price = selectedPackage.price + selectedProduct.price;
      }
    }
    emit(
      DobrystartState(
        selectedPackageIndex: newValue,
        selectedProductIndex: state.selectedProductIndex,
        packages: state.packages,
        products: state.products,
        price: price.toString(),
      ),
    );
  }

  Future<void> selectNewProductIndex(int? newValue) async {
    int price = 0;
    if (newValue != null) {
      final selectedProduct = state.products[newValue];
      price = selectedProduct.price;

      if (state.selectedPackageIndex != null) {
        final selectedPackage = state.packages[state.selectedPackageIndex!];
        price = selectedProduct.price + selectedPackage.price;
      }
    }
    emit(
      DobrystartState(
        selectedPackageIndex: state.selectedPackageIndex,
        selectedProductIndex: newValue,
        packages: state.packages,
        products: state.products,
        price: price.toString(),
      ),
    );
  }
}
