import 'command.dart';
import 'light.dart';

class LightOffCommand implements Command {
  final Light light;

  LightOffCommand({required this.light});

  @override
  void execute() {
    light.turnOff();
  }

  @override
  void undo() {
    light.turnOn();
  }
}
