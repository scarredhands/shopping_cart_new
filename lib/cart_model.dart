import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class cartmodel extends ChangeNotifier{
  final List _shopVegetables= const [
    ['Cauliflower','2.36'],
    ['Potatoes','1.25'],
    ['Beans','0.84'],
    ['Cabbage','1.34']
  ];
  final List _shopFruits=const [
    ['Apple','1.36'],
    ['Grapes','0.25'],
    ['Banana','2.84'],
    ['Mangoes','2.34']
  ];
  get shopVegetables=> _shopVegetables;
  get shopFruits => _shopFruits;
  List _cartItems=[];

  get cartItems=> _cartItems;


  void addcartItems(int index){
    _cartItems.add(_shopVegetables[index]);
    notifyListeners();
  }


 void addfruits(int index){
   _cartItems.add(_shopFruits[index]);
   notifyListeners();
 }

  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < cartItems.length; i++) {
      totalPrice += double.parse(cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }



}