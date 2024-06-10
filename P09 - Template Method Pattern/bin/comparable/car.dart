import 'comparable.dart';

abstract class Car with Comparable {
  final String name;
  final int price;

  Car({required this.name, required this.price});

  @override
  int get value => price;
}
