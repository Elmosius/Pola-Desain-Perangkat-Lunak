import 'package:dart_application_1/friend_rice.dart';
import 'package:dart_application_1/item.dart';
import 'package:dart_application_1/promo.dart';

class FreeBlackTea implements Promo {
  @override
  double getTotal(Map<Item, int> purchasedItems) {
    double total = 0;

    if (purchasedItems[const FriedRice()]! >= 4) {
      total = purchasedItems[const FriedRice()]! * const FriedRice().price;
    } else {
      purchasedItems.forEach((item, quantity) {
        total += item.price * quantity;
      });
    }

    return total;
  }
}
