import 'package:dart_application_1/2/Observer.dart';

abstract interface class Subject<S,I> {
  void registerObserver(Observer<S,I> o);
  void removeObserver(Observer<S,I> o);
  void notifyObservers();
}
