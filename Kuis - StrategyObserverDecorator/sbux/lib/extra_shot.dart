import 'beverage_decorator.dart';

class ExtraShot extends BeverageDecorator {
  final int amount;

  ExtraShot({this.amount = 1, required super.beverage})
      : super(
            price: beverage.price + 3000 * amount,
            name: '${beverage.name} with extra shot');

  @override
  String get decoratorDetails => 'Extra shot x$amount';
}
