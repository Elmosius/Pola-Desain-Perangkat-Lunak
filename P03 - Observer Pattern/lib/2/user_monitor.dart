import 'package:dart_application_1/2/Observer.dart';

class UserMonitor implements Observer<String,int> {
  @override
  void update(String name, int age) {
    print("User data updated: $name berumur $age");
  }

}

