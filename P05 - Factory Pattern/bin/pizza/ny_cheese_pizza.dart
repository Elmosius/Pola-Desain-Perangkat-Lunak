import '../sauce/sauce.dart';
import '../sauce/tomato_sauce.dart';
import '../topping/cheese.dart';
import '../topping/onion.dart';
import '../topping/topping.dart';
import 'pizza.dart';

class NyCheesePizza extends Pizza {
  @override
  void prepare() {
    print(
        "Preparing NYCheesePizza with sauce ${sauce.name} + ${toppings.map((e) => e.name).join(', ')}");
  }

  @override
  void serve() {
    print("Serving NYCheesePizza");
  }

  @override
  Sauce get sauce => TomatoSauce();

  @override
  List<Topping> get toppings => [Onion(), Cheese()];
}
