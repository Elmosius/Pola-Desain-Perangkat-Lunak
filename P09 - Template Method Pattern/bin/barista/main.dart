import 'coffee.dart';
import 'tea.dart';

void main(List<String> args) {
  Tea tea = Tea();
  Coffee coffee = Coffee();

  print("Making tea...");
  tea.prepareRecipe();

  print("Making coffe...");
  coffee.prepareRecipe();
}
