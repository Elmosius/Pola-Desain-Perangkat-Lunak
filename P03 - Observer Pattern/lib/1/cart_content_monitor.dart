import 'package:dart_application_1/1/item.dart';
import 'Observer.dart';

class CartContentMonitor implements Observer<List<Item>>{
  @override
  void update(List<Item> items) {
    print("Cart Content Monitor: The cart contains ${items.length} item(s).");
  }
  
}