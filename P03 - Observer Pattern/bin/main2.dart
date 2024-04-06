import 'package:dart_application_1/2/user.dart';
import 'package:dart_application_1/2/user_monitor.dart';

void main(List<String> arguments) {
  User user = User();
  user.registerObserver(UserMonitor()); 

  user.setUser("Elmo", 19);
  user.setUser("Emily", 10);
  user.setUser("Kaka", 21);


}