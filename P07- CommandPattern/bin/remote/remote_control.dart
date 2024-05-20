import 'command.dart';
import 'nocommand.dart';

class RemoteControl {
  final List<Command> onCommands;
  final List<Command> offCommands;
  
  RemoteControl()
      : onCommands = List.filled(7, NoCommand(), growable: false),
        offCommands = List.filled(7, NoCommand(), growable: false);

  void setCommand(int slot, Command onCommand, Command offCommand) {
    onCommands[slot] = onCommand;
    offCommands[slot] = offCommand;
  }

  void onButtonWasPushed(int slot) {
    onCommands[slot].execute();
  }

  void offButtonWasPushed(int slot) {
    offCommands[slot].execute();
  }

  @override
  String toString() {
    var buffer = StringBuffer();
    buffer.writeln("\n------ Remote Control -------");
    for (var i = 0; i < onCommands.length; i++) {
      buffer.writeln(
          "[slot $i] ${onCommands[i].runtimeType}    ${offCommands[i].runtimeType}");
    }
    return buffer.toString();
  }
}
