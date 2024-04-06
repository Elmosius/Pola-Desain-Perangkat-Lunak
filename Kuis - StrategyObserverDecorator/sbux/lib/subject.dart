import 'observer.dart';

abstract interface class Subject<T> {
  void registerObserver(Observer<T> observer);
  void removeObserver(Observer<T> observer);
  void notifyObservers();
}
