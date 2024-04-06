import 'menu.dart';

abstract class Food extends Menu {
  Food({required super.price, required super.name});

  @override
  String get details => '* $name';
}
