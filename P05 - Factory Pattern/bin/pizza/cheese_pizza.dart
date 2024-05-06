import '../sauce/sauce.dart';
import '../sauce/tomato_sauce.dart';
import '../topping/cheese.dart';
import '../topping/topping.dart';
import 'pizza.dart';

class CheesePizza extends Pizza {
  @override
  void prepare() {
    print(
        "Preparing CheesePizza with sauce ${sauce.name} + ${toppings.map((e) => e.name).join(', ')}");
  }

  @override
  void serve() {
    print("Serving CheesePizza");
  }

  @override
  Sauce get sauce => TomatoSauce();

  @override
  List<Topping> get toppings => [Cheese()];
}
