import 'package:input_output/Decorator%20Pattern/Starbuzz%20Cofeee/beverage.dart';
import 'package:input_output/Decorator%20Pattern/Starbuzz%20Cofeee/condiment_decorator.dart';

class Mocha extends CondimentDecorator{

  Mocha(Beverage b){
    beverage = b;
  } 

  @override
  String getDesc(){
    return ("${beverage.getDesc()} with Mocha");
  }

  @override
  double cost() {
    return beverage.cost() + 0.20;
  }
}