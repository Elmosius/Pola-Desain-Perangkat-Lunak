import 'package:dart_application_1/item.dart';

abstract interface class Promo {
  double getTotal(Map<Item, int> purchasedItems){
    double total = 0;

    purchasedItems.forEach((item, quantity) {
      total += item.price * quantity;
    });

    return total;    
  }

    
}
