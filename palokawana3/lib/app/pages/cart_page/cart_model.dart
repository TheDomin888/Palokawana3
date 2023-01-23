import 'package:flutter/material.dart';
import 'package:palokawana3/app/pages/product%20pages/cerrado_page.dart';
import 'package:palokawana3/app/pages/product%20pages/dobry_start_page.dart';
import 'package:palokawana3/app/pages/product%20pages/kolumbia_page.dart';
import 'package:palokawana3/app/pages/product%20pages/santos_page.dart';

class CartModel extends ChangeNotifier {
  final List _shopItmes = [
    [
      "Brasil Cerrado",
      "33zł - 113zł",
      "images/Cerrado.png",
      Colors.white,
      CerradoPage(
        onPressed: () => {},
      ),
      "Ziarna",
      "Przelew",
      "Chemex",
      "Aeropress",
      "Kawiarka"
          "250g",
      "500g",
      "1kg",
    ],
    [
      "Kolumbia Excelso",
      "39zł - 133zł",
      "images/Kolumbia.png",
      Colors.white,
      KolumbiaPage(),
      "Ziarna",
      "Przelew",
      "Chemex",
      "Aeropress",
      "Kawiarka"
          "250g",
      "500g",
      "1kg",
    ],
    [
      "Dobry Start",
      "39zł - 68zł",
      "images/Dobrystart.png",
      Colors.white,
      DobryStartPage(),
      "Ziarna",
      "Przelew",
      "Chemex",
      "Aeropress",
      "Kawiarka"
          "250g",
      "500g",
      "1kg",
    ],
    [
      "Brasil Santos",
      "27zł - 84zł",
      "images/Santos.png",
      Colors.white,
      SantosPage(),
      "Ziarna",
      "Przelew",
      "Chemex",
      "Aeropress",
      "Kawiarka"
          "250g",
      "500g",
      "1kg",
    ],
  ];

  List _cartItems = [];

  get shopItems => _shopItmes;

  get cartItems => _cartItems;

  void addItemToCart(int index) {
    _cartItems.add(_shopItmes[index]);
    notifyListeners();
  }

  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < cartItems.lenght; i++) {
      totalPrice += double.parse(_cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}
