import 'person.dart';
import 'person_controller.dart';

class LocalPersonController implements PersonController {
  static LocalPersonController? _object;

  LocalPersonController._();

  factory LocalPersonController() {
    _object ??= LocalPersonController._();
    return _object!;
  }
  
  @override
  void save(Person person) {
    print("Saving person(firebase): ${person.name}");
  }

 
}
