import 'package:dart_application_1/item.dart';
import 'package:dart_application_1/promo.dart';

class Discount implements Promo{
    final double discount;

    const Discount({required this.discount});

    @override
    double getTotal(Map<Item, int> purchasedItems){
    double total = 0;

    purchasedItems.forEach((item, quantity) {
      total += item.price * quantity;
    });

    return total*(discount/100);    
  }
}