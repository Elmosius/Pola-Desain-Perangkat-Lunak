import 'Observer.dart';
import 'package:dart_application_1/1/item.dart';
import 'package:dart_application_1/1/subject.dart';

class Cart implements Subject<List<Item>> {
  final List<Item> _items = [];
  final List<Observer<List<Item>>> _observers = [];

  void addItem(Item item){
    _items.add(item);
    notifyObservers();
  }

  @override
  void notifyObservers() {
    for (var observer in _observers){
      observer.update(_items);
    }
  }

  @override
  void registerObserver(Observer<List<Item>> o) {
    _observers.add(o);
  }

  @override
  void removeObserver(Observer<List<Item>> o) {
    _observers.remove(o);
  }
}