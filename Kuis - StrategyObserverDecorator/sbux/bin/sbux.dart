import 'package:sbux/burger.dart';
import 'package:sbux/cappucino.dart';
import 'package:sbux/caramel.dart';
import 'package:sbux/cheese.dart';
import 'package:sbux/coffee_latte.dart';
import 'package:sbux/credit_card.dart';
import 'package:sbux/extra_shot.dart';
import 'package:sbux/hotdog.dart';
import 'package:sbux/transaction.dart';
import 'package:sbux/transaction_monitor.dart';
import 'package:sbux/vegetables.dart';

void main(List<String> args) {
  Transaction transaction = Transaction();
  TransactionMonitor transactionMonitor = TransactionMonitor();

  transaction.registerObserver(transactionMonitor);

  transaction.addMenu(Cappucino());
  transaction.addMenu(ExtraShot(
      amount: 2, beverage: Caramel(beverage: CoffeeLatte(isCold: false))));
  transaction.addMenu(Cheese(amount: 3, food: Vegetable(food: Burger())));
  transaction.addMenu(Hotdog());
  transaction.addMenu(Vegetable(food: Hotdog()));

  transaction.changePaymentMethod(CreditCard());
}
