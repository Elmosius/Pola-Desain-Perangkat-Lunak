import 'package:sbux/beverage_decorator.dart';

class Caramel extends BeverageDecorator {
  Caramel({required super.beverage})
      : super(price: beverage.price + 5000, name: 'Caramel ${beverage.name}');

  @override
  String get decoratorDetails => 'Caramel syrup';
}
