import 'package:dart_application_1/1/cart.dart';
import 'package:dart_application_1/1/cart_content_monitor.dart';
import 'package:dart_application_1/1/cart_total_monitor.dart';
import 'package:dart_application_1/1/item.dart';
import 'package:dart_application_1/1/temp_monitor.dart';
import 'package:dart_application_1/1/weather.dart';

void main(List<String> arguments) {
  Cart cart = Cart();

  CartContentMonitor cartContentMonitor = CartContentMonitor();
  CartTotalMonitor cartTotalMonitor = CartTotalMonitor();

  cart.registerObserver(cartContentMonitor);
  cart.registerObserver(cartTotalMonitor);

  cart.addItem(Item('Item1'));
  cart.addItem(Item('Item2'));
  cart.addItem(Item('Item3'));

  print('');
  Weather weather = Weather();
  weather.registerObserver(TemperatorMonitor());
  weather.addTemperatur(20);
}
