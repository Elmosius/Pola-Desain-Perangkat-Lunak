import 'coffee.dart';
import 'coffee_hook.dart';
import 'tea.dart';
import 'tea_hook.dart';

void main(List<String> args) {
  Tea tea = Tea();
  Coffee coffee = Coffee();

  print("Making tea...");
  tea.prepareRecipe();

  print("\nMaking coffee...");
  coffee.prepareRecipe();

  TeaWithHook teaWithHook = TeaWithHook();
  CoffeeWithHook coffeeWithHook = CoffeeWithHook();

  print("\n Making tea...");
  teaWithHook.prepareRecipe();

  print("\n Making coffee");
  coffeeWithHook.prepareRecipe();
}
