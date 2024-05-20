import '../remote/command.dart';
import 'hottub.dart';

class HottubOnCommand implements Command {
  final Hottub hottub;

  HottubOnCommand({required this.hottub});

  @override
  void execute() {
    hottub.turnOn();
    hottub.setTemperature(104);
    hottub.circulate();
  }

  @override
  void undo() {
    hottub.turnOff();
  }
}
