import 'dart:io';

import 'package:dart_application_1/black_tea.dart';
import 'package:dart_application_1/free_black_tea.dart';
import 'package:dart_application_1/friend_rice.dart';
import 'package:dart_application_1/item.dart';
import 'package:dart_application_1/transaction.dart';
import 'package:dart_application_1/voucher.dart';

void main(List<String> arguments){
  Map<Item, int> purchasedItems = {};
  int? input;

  stdout.write("Nasi Goreng: ");
  input = int.tryParse(stdin.readLineSync() ?? "0") ?? 0;
  if (input > 0) {
    purchasedItems[const FriedRice()] = input;
  }

  stdout.write("Teh Hitam: ");
  input = int.tryParse(stdin.readLineSync() ?? "0") ?? 0;
  if (input > 0) {
    purchasedItems[const BlackTea()] = input;
  }

  print("============");
  Transaction t = Transaction(purchasedItems: purchasedItems, promo: FreeBlackTea());

  print('total: ${t.getTotal()}');
}