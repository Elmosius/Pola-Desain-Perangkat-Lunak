import 'package:dart_application_1/1/Observer.dart';

class TemperatorMonitor implements Observer<int>{
  @override
  void update(int temp) {
    print('Temperatur : $temp C.');
  }

}