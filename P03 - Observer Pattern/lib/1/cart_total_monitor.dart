import 'package:dart_application_1/1/item.dart';
import 'Observer.dart';

class CartTotalMonitor implements Observer<List<Item>>{
  @override
  void update(List<Item> items) {
    print('Total ${items.length} items.');
  }

}