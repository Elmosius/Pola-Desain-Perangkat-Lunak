import 'cash.dart';
import 'observer.dart';
import 'payment_method.dart';
import 'subject.dart';

import 'menu.dart';

class Transaction implements Subject<Transaction> {
  final List<Observer<Transaction>> _observers = [];
  final List<Menu> _menus = [];

  PaymentMethod _paymentMethod = Cash();

  void changePaymentMethod(PaymentMethod paymentMethod) {
    _paymentMethod = paymentMethod;
    notifyObservers();
  }

  List<Menu> get menus => _menus.map((e) => e).toList(growable: false);

  void addMenu(Menu menu) {
    _menus.add(menu);
    notifyObservers();
  }

  @override
  void notifyObservers() {
    for (var observer in _observers) {
      observer.update(this);
    }
  }

  @override
  void registerObserver(Observer<Transaction> observer) {
    _observers.add(observer);
  }

  @override
  void removeObserver(Observer<Transaction> observer) {
    _observers.remove(observer);
  }

  double get total {
    double total = 0;

    for (var menu in _menus) {
      total += menu.price;
    }

    return total;
  }

  double get totalPayment => _paymentMethod.getTotalPayment(total);
}
