import 'command.dart';
import 'light.dart';

class LightOnCommand implements Command {
  final Light light;

  LightOnCommand({required this.light});

  @override
  void execute() {
    light.turnOn();
  }
}
