// import '../pizza/cheese_pizza.dart';
// import '../pizza/pepperoni_pizza.dart';
import '../pizza/pizza.dart';

abstract class PizzaStore<T> {
  // PizzaFactory factory;

  // PizzaStore(this.factory);

  void order(T type) {
    // Pizza pizza = factory.create(type);
    Pizza pizza = create(type);
    pizza.prepare();
    pizza.serve();
  }

  Pizza create(T type);
}
