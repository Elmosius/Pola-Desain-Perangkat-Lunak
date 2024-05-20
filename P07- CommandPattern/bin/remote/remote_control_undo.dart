import 'command.dart';
import 'nocommand.dart';

class RemoteControlWithUndo {
  final List<Command> onCommands;
  final List<Command> offCommands;
  Command undoCommand;

  RemoteControlWithUndo()
      : onCommands = List.filled(7, NoCommand(), growable: false),
        offCommands = List.filled(7, NoCommand(), growable: false),
        undoCommand = NoCommand();

  void setCommand(int slot, Command onCommand, Command offCommand) {
    onCommands[slot] = onCommand;
    offCommands[slot] = offCommand;
  }

  void onButtonWasPushed(int slot) {
    onCommands[slot].execute();
    undoCommand = onCommands[slot];
  }

  void offButtonWasPushed(int slot) {
    offCommands[slot].execute();
    undoCommand = offCommands[slot];
  }

  void undoButtonWasPushed() {
    undoCommand.undo();
  }

  @override
  String toString() {
    var buffer = StringBuffer();
    buffer.writeln("\n------ Remote Control -------");
    for (var i = 0; i < onCommands.length; i++) {
      buffer.writeln(
          "[slot $i] ${onCommands[i].runtimeType}    ${offCommands[i].runtimeType}");
    }
    buffer.writeln("[undo] ${undoCommand.runtimeType}");
    return buffer.toString();
  }
}
