import '../remote/command.dart';

class MacroCommand implements Command {
  final List<Command> commands;

  MacroCommand({required this.commands});

  @override
  void execute() {
    for (var e in commands) {
      e.execute();
    }
  }

  @override
  void undo() {
    for (var e in commands.reversed) {
      e.undo();
    }
  }
}
