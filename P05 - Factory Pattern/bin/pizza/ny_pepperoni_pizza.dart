import '../sauce/carbonara_sauce.dart';
import '../sauce/sauce.dart';
import '../topping/onion.dart';
import '../topping/pepperoni.dart';
import '../topping/topping.dart';
import 'pizza.dart';

class NyPepperoniPizza extends Pizza {
  @override
  void prepare() {
    print(
        "Preparing NYPepperoniPizza with sauce ${sauce.name} + ${toppings.map((e) => e.name).join(', ')}");
  }

  @override
  void serve() {
    print("Serving NYPepperoniPizza");
  }

  @override
  Sauce get sauce => CarbonaraSauce();

  @override
  List<Topping> get toppings => [Pepperoni(), Onion()];
}
