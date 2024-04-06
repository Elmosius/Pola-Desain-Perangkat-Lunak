import 'package:dart_application_1/item.dart';
import 'package:dart_application_1/promo.dart';

class Transaction{
  final Map<Item, int> purchasedItems;
  final Promo _promo;

  const Transaction({required Promo promo, required this.purchasedItems}) : _promo = promo;

  double getTotal() => _promo.getTotal(purchasedItems);
}