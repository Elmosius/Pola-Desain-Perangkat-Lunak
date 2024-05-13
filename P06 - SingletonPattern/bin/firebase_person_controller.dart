import 'person.dart';
import 'person_controller.dart';

class FireBasePersonController implements PersonController{
  static FireBasePersonController? _object;

  FireBasePersonController._();

  factory FireBasePersonController(){
    _object ??= FireBasePersonController._();
    return _object!;
  }

  @override
  void save(Person person) {
     print("Saving person(firebase): ${person.name}");
  }

}