import 'command.dart';
import 'garage_door.dart';

class GarageDoorOpenCommand implements Command {
  final GarageDoor garageDoor;

  GarageDoorOpenCommand({required this.garageDoor});

  @override
  void execute() {
    garageDoor.up();
  }
}
