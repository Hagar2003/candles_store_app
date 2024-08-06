import 'package:flutter/cupertino.dart';
import 'package:hj/home.dart';

class Cart with ChangeNotifier {
  List selected = [];
  double price = 0;
  Add(Can product) {
    selected.add(product);
    price += product.pr.round();
    notifyListeners();
  }

  remove(Can product) {
    selected.remove(product);
    price -= product.pr.round();
    notifyListeners();
  }
}
