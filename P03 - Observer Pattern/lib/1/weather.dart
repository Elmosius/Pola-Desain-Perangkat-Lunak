import 'package:dart_application_1/1/Observer.dart';
import 'package:dart_application_1/1/subject.dart';

class Weather implements Subject<int> {
  late int _temp;
  final List<Observer> _observers = [];

  void addTemperatur(int t){
    _temp = t;
    notifyObservers();
  }

  @override
  void notifyObservers() {
    for (var observer in _observers){
      observer.update(_temp);
    }
  }

  @override
  void registerObserver(Observer<int> o) {
    _observers.add(o);
  }

  @override
  void removeObserver(Observer<int> o) {
    _observers.remove(o);
  }
}
