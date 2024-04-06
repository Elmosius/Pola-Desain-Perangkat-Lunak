import 'package:input_output/Decorator%20Pattern/Starbuzz%20Cofeee/beverage.dart';

class DarkRoast extends Beverage{

  DarkRoast(){
    desc = 'Coffee Dark Roast';
  }
  
  @override
  double cost() {
    return 0.99;
  }
}