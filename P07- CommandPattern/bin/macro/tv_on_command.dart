import '../remote/command.dart';
import 'tv.dart';

class TVOnCommand implements Command {
  final TV tv;

  TVOnCommand({required this.tv});

  @override
  void execute() {
    tv.turnOn();
  }

  @override
  void undo() {
    tv.turnOff();
  }
}
