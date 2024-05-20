import '../remote/command.dart';
import 'hottub.dart';

class HottubOffCommand implements Command {
  final Hottub hottub;

  HottubOffCommand({required this.hottub});

  @override
  void execute() {
    hottub.setTemperature(90);
    hottub.turnOff();
  }

  @override
  void undo() {
    hottub.turnOn();
  }
}
