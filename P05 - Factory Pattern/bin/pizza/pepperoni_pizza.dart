import '../sauce/carbonara_sauce.dart';
import '../sauce/sauce.dart';
import '../topping/pepperoni.dart';
import '../topping/topping.dart';
import 'pizza.dart';

class PepperoniPizza extends Pizza {
  @override
  void prepare() {
    print("Preparing Pepperoni Pizza ");
  }

  @override
  void serve() {
    print("Serving Pepperoni Pizza");
  }

  @override
  Sauce get sauce => CarbonaraSauce();

  @override
  List<Topping> get toppings => [Pepperoni()];
}
