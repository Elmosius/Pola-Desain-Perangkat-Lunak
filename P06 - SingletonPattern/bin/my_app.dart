import 'person.dart';
import 'person_controller.dart';

class MyApp{
  final PersonController controller;

  MyApp({required this.controller});

  void run(){
    Person p  = Person.fromJson({
      'name': 'John Doe',
      'studentId' : '2372001',
    });
    controller.save(p);
  }

}