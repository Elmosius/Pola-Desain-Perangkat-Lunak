import 'package:sbux/decorator.dart';

import 'beverage.dart';

abstract class BeverageDecorator extends Beverage implements Decorator {
  final Beverage beverage;

  BeverageDecorator(
      {required super.price, required super.name, required this.beverage})
      : super(isCold: beverage.isCold);

  @override
  String get details {
    String addOns = '* $name [${isCold ? 'Cold' : 'Hot'}]';
    Beverage beverage = this;

    while (beverage is BeverageDecorator) {
      addOns += '\n  - ${beverage.decoratorDetails}';
      beverage = beverage.beverage;
    }

    return addOns;
  }
}
