import 'dart:math';
import 'package:dart_application_1/item.dart';
import 'package:dart_application_1/promo.dart';

class Voucher implements Promo{
  final double value;

  Voucher({required this.value});

  @override
  double getTotal(Map<Item, int> purchasedItems) {
    double total = 0;

    purchasedItems.forEach((item, quantity) {
      total += item.price * quantity;
      
     });
    
  return max(0, total- value);
  }

  
}