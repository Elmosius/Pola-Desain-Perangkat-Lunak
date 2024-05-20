import '../remote/command.dart';
import 'light_off_command.dart';
import '../remote/remote_control_undo.dart';
import 'hottub_off_command copy.dart';
import 'light_on_command.dart';
import 'hottub.dart';
import 'hottub_on_command.dart';
import 'light.dart';
import 'macro_command.dart';
import 'tv.dart';
import 'tv_off_command.dart';
import 'tv_on_command.dart';

main() {
  RemoteControlWithUndo remoteControl = RemoteControlWithUndo();

  Light light = Light(location: "Living Room");
  TV tv = TV(location: 'Living Room');
  Hottub hottub = Hottub();

  LightOnCommand lightOn = LightOnCommand(light: light);
  TVOnCommand tvOn = TVOnCommand(tv: tv);
  HottubOnCommand hottubOn = HottubOnCommand(hottub: hottub);

  LightOffCommand lightOff = LightOffCommand(light: light);
  TVOffCommand tvOff = TVOffCommand(tv: tv);
  HottubOffCommand hottubOff = HottubOffCommand(hottub: hottub);

  final List<Command> partyOn = [lightOn, tvOn, hottubOn];
  final List<Command> partyOff = [lightOff, tvOff, hottubOff];

  MacroCommand partyOnMacro = MacroCommand(commands: partyOn);
  MacroCommand partyOffMacro = MacroCommand(commands: partyOff);

  remoteControl.setCommand(0, partyOnMacro, partyOffMacro);
  print(remoteControl);
  print("--- Pushing Macro On---");
  remoteControl.onButtonWasPushed(0);
  print("--- Pushing Macro Off---");
  remoteControl.offButtonWasPushed(0);
}
