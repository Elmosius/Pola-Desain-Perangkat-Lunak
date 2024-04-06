import 'package:input_output/Decorator%20Pattern/Starbuzz%20Cofeee/beverage.dart';

class Decaf extends Beverage{
  Decaf(){
    desc = 'Coffee Decaf';
  }
  
  @override
  double cost() {
    return 1.05;
  }
}