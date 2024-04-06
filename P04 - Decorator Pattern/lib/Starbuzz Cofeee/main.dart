import 'package:input_output/Decorator%20Pattern/Starbuzz%20Cofeee/houseblend.dart';
import 'package:input_output/Decorator%20Pattern/Starbuzz%20Cofeee/beverage.dart';
import 'package:input_output/Decorator%20Pattern/Starbuzz%20Cofeee/mocha.dart';
import 'package:input_output/Decorator%20Pattern/Starbuzz%20Cofeee/whip.dart';

main(){
  Beverage b = HouseBlend();
  b = Mocha(b);
  b = Whip(b);
  
  print(b.getDesc());
  print(b.cost());
}