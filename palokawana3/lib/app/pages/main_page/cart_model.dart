import 'package:flutter/material.dart';
import 'package:palokawana3/app/pages/product%20pages/cerrado_page/cerrado_page.dart';
import 'package:palokawana3/app/pages/product%20pages/dobry_start_page/dobry_start_page.dart';
import 'package:palokawana3/app/pages/product%20pages/kolumbia_page/kolumbia_page.dart';
import 'package:palokawana3/app/pages/product%20pages/santos_page/santos_page.dart';

class CartModel extends ChangeNotifier {
  final List _shopItmes = [
    [
      "Brasil Cerrado",
      "33zł - 113zł",
      "images/coffee/Cerrado.png",
      Colors.white,
      CerradoPage(),
    ],
    [
      "Kolumbia Excelso",
      "39zł - 133zł",
      "images/coffee/Kolumbia.png",
      Colors.white,
      KolumbiaPage(),
    ],
    [
      "Dobry Start",
      "39zł - 68zł",
      "images/coffee/Dobrystart.png",
      Colors.white,
      DobryStartPage(),
    ],
    [
      "Brasil Santos",
      "27zł - 84zł",
      "images/coffee/Santos.png",
      Colors.white,
      SantosPage(),
    ],
  ];

  get shopItems => _shopItmes;
}
