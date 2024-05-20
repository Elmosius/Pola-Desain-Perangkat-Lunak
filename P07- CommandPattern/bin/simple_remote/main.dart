import 'garage_door.dart';
import 'garage_door_open_command.dart';
import 'light.dart';
import 'light_on_command.dart';
import 'simple_remote_control.dart';

main() {
  SimpleRemoteControl remote = SimpleRemoteControl();

  Light light = Light();
  LightOnCommand lightOn = LightOnCommand(light: light);

  GarageDoor garageDoor = GarageDoor();
  GarageDoorOpenCommand garageOpen =
      GarageDoorOpenCommand(garageDoor: garageDoor);

  remote.setCommand(lightOn);
  remote.buttonWasPressed();
  remote.setCommand(garageOpen);
  remote.buttonWasPressed();
}
