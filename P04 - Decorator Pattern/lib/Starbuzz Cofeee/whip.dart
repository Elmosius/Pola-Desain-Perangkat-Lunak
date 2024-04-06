
import 'package:input_output/Decorator%20Pattern/Starbuzz%20Cofeee/beverage.dart';
import 'package:input_output/Decorator%20Pattern/Starbuzz%20Cofeee/condiment_decorator.dart';

class Whip extends CondimentDecorator{

  Whip(Beverage b){
    beverage = b;
  } 

  @override
  String getDesc(){
    return ("${beverage.getDesc()} with Whip");
  }

  @override
  double cost() {
    return beverage.cost() + 0.10;
  }
}