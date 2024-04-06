import 'dart:io';
import 'package:black_smith_shop/broad_sword.dart';
import 'package:black_smith_shop/double_sword.dart';
import 'package:black_smith_shop/wooden_sword.dart';

void main(List<String> arguments) {
  print("=============================");
  print("Welcome to BlackSmith Shops!!");
  print("=============================\n");

  print("List of BlackSmith Shops");
  print("1. Wooden Sword");
  print("2. Broad Sword");
  print('3. Double Sword');
  print('0. Exit');
  stdout.write("Choose for information: ");
  String choose = stdin.readLineSync()!;
  while (choose != "0") {
    if (choose == "1") {
      print("----Wooden Sword---");
      var sword = WoodenSword();
      print("Price : !free!");
      sword.attackDamage();
    } else if (choose == "2") {
      print("----Broad Sword---");
      var sword = BroadSword();
      print('Price BroadSword: ${sword.getPrice()}');
      sword.attackDamage();
    } else if (choose == "3") {
      print("----Double Sword---");
      var sword = DoubleSword();
      print('Price Double Sword: ${sword.getPrice()}');
      sword.attackDamage();
    } else {
      print("Please select 0,1,2,3");
    }
    stdout.write("Choose for information: ");
    choose = stdin.readLineSync()!;
    print('');
  }
}
