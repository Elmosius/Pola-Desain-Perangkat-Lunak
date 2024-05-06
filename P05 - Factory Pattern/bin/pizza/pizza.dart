import '../sauce/sauce.dart';
import '../topping/topping.dart';

abstract class Pizza {
  Sauce get sauce;
  List<Topping> get toppings;
  
  void prepare();
  void serve();
}
