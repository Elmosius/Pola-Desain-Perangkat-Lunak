import 'package:dart_application_1/2/Observer.dart';
import 'package:dart_application_1/2/subject.dart';

class User implements Subject<String, int> {
  late String _name;
  late int _age;
  final List<Observer<String, int>> _observers = [];

  void setUser(String name, int age) {
    _name = name;
    _age = age;
    notifyObservers(); 
  }

  @override
  void notifyObservers() {
    for (var observer in _observers){
      observer.update(_name, _age);
    }
  }

  @override
  void registerObserver(Observer<String, int> o) {
    _observers.add(o);
  }

  @override
  void removeObserver(Observer<String, int> o) {
    _observers.remove(o);
  }

}