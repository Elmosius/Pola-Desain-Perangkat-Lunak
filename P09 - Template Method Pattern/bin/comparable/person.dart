import 'comparable.dart';

class Person with Comparable {
  final String name;
  final int age;

  Person({required this.name, required this.age});

  @override
  int get value => name.length;
}
