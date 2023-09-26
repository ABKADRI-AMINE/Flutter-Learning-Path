import 'package:flower_app/model/item.dart';
import 'package:flutter/material.dart';

class Cart with ChangeNotifier {
  List selectedProducts = [];
  int price = 0;
  add(Item product) {
    selectedProducts.add(product);
    price += product.price.round();
    notifyListeners();//bash yder f7al set state() y3awd y9ra lcodat
  }
  delete(Item product) {
selectedProducts.remove(product);
price -= product.price.round();
notifyListeners();
  }
  get itemCount {
    return selectedProducts.length;
  }
}
