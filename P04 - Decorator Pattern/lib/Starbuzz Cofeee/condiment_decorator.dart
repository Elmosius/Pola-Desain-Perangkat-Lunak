import 'package:input_output/Decorator%20Pattern/Starbuzz%20Cofeee/beverage.dart';

abstract class CondimentDecorator extends Beverage{
  late Beverage beverage;

  String getDesc();
}