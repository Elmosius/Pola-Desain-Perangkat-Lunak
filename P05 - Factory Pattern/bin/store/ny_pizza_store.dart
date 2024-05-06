import '../pizza/cheese_pizza.dart';
import '../pizza/ny_cheese_pizza.dart';
import '../pizza/ny_pepperoni_pizza.dart';
import '../pizza/pepperoni_pizza.dart';
import '../pizza/pizza.dart';
import 'pizza_store.dart';

enum NYPizzaType { cheese, pepperoni, nycheese, nypepperoni }

class NyPizzaStore extends PizzaStore<NYPizzaType> {
  @override
  Pizza create(NYPizzaType type) {
    Pizza pizza;

    if (type == NYPizzaType.nycheese) {
      pizza = NyCheesePizza();
    } else if (type == NYPizzaType.nypepperoni) {
      pizza = NyPepperoniPizza();
    } else if (type == NYPizzaType.cheese) {
      pizza = CheesePizza();
    } else {
      pizza = PepperoniPizza();
    }

    return pizza;
  }
}
