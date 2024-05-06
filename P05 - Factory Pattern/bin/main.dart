import 'person.dart';
import 'store/default_pizza_store.dart';
// import 'factory/pizza_factory.dart';

main() {
  var store = DefaultPizzaStore();
  store.order(DefaultPizzaType.cheese);

  Map<String, dynamic> json = {
    'name': 'Udin',
    'age': 30,
  };
  Person person = Person.fromJson(json);
  print(person.name);
  print(person.age);

  Person p = Person.fromString('Joko Widodo, 50');
  print(p.name);
  print(p.age);
}
