import 'package:input_output/Decorator%20Pattern/Starbuzz%20Cofeee/beverage.dart';

class HouseBlend extends Beverage{

  HouseBlend(){
    desc = 'House Blend Coffee';
  }

  @override
  double cost() {
    return 0.89; 
  }
}