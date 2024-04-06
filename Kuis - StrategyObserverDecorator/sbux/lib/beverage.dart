import 'menu.dart';

abstract class Beverage extends Menu {
  final bool isCold;

  Beverage({this.isCold = true, required super.price, required super.name})
      : super();

  @override
  String get details => '* $name [${isCold ? 'Cold' : 'Hot'}]';
}
