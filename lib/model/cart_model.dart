import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {

  final List _shopItems = [
    ["Avocado", "4.00", "lib/images/avacado.png", Colors.green],
    ["Milk", "3.30", "lib/images/milk.png", Colors.red],
    ["Chicken", "12.50", "lib/images/chicken.png", Colors.brown],
    ["Water", "1.00", "lib/images/water.png", Colors.blue],
    ["Alihan", "0.01", "lib/images/chicken.png", Colors.yellow],
  ];

  List _cartItems = [];

  get shopItems => _shopItems;

  get cartItems => _cartItems;

  void addItemToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  String calculateTotal() {
    double totalPrice = 0;
    for (int i=0; i<_cartItems.length; i++) {
      totalPrice += double.parse(_cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}