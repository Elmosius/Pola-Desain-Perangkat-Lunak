import 'command.dart';

class SimpleRemoteControl {
  Command? slot;

  SimpleRemoteControl();

  void setCommand(Command command) => slot = command;

  void buttonWasPressed() => slot?.execute();
}
