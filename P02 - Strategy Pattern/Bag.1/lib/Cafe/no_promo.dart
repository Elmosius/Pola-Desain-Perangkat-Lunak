import 'package:dart_application_1/item.dart';
import 'package:dart_application_1/promo.dart';

class NoPromo implements Promo {
  @override
  double getTotal(Map<Item, int> purchasedItems) {
    double total = 0;

    purchasedItems.forEach((item, quantity) {
      total += item.price * quantity;
    });

    return total;
  }
}
