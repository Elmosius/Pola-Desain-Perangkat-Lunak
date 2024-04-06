import 'Observer.dart';

abstract interface class Subject<T> {
  void registerObserver(Observer<T> o);
  void removeObserver(Observer<T> o);
  void notifyObservers();
}
