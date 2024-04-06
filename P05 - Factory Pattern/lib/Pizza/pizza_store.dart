import 'package:input_output/Factory%20Pattern/Pizza/pizza.dart';

abstract class PizzaStore{

  Pizza createPizza(String type);

  Pizza orderPizza(String type){
    Pizza pizza;
    pizza = createPizza(type);
    return pizza;
  }


}