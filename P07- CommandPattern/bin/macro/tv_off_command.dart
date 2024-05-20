import '../remote/command.dart';
import 'tv.dart';

class TVOffCommand implements Command {
  final TV tv;

  TVOffCommand({required this.tv});

  @override
  void execute() {
    tv.turnOff();
  }

  @override
  void undo() {
    tv.turnOn();
  }
}
