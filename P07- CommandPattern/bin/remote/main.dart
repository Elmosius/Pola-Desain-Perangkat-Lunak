import 'ceilingfan.dart';
import 'ceilingfan_high_command.dart';
import 'ceilingfan_medium_command copy.dart';
import 'ceilingfan_off_command.dart';
import 'light.dart';
import 'light_off_command.dart';
import 'light_on_command.dart';
import 'remote_control.dart';
import 'remote_control_undo.dart';
import 'stereo.dart';
import 'stereo_off_command.dart';
import 'stereo_on_with_cd_command.dart';

main() {
  RemoteControlWithUndo remoteControl = RemoteControlWithUndo();

  Light livingRoomLight = Light(location: "Living Room");
  Light kitchenLight = Light(location: "Kitchen");
  Stereo stereo = Stereo(location: "Living Room");
  CeilingFan ceilingFan = CeilingFan(location: "Living Room");

  LightOnCommand livingRoomLightOn = LightOnCommand(light: livingRoomLight);
  LightOffCommand livingRoomLightOff = LightOffCommand(light: livingRoomLight);
  LightOnCommand kitchenLightOn = LightOnCommand(light: kitchenLight);
  LightOffCommand kitchenLightOff = LightOffCommand(light: kitchenLight);

  CeilingFanHighCommand ceilingFanHigh = CeilingFanHighCommand(ceilingFan);
  CeilingFanMediumCommand ceilingFanMedium =
      CeilingFanMediumCommand(ceilingFan);
  CeilingFanOffCommand ceilingFanOff = CeilingFanOffCommand(ceilingFan);

  StereoOnWithCDCommand stereoOnWithCD = StereoOnWithCDCommand(stereo: stereo);
  StereoOffCommand stereoOff = StereoOffCommand(stereo: stereo);

  // remoteControl.setCommand(0, livingRoomLightOn, livingRoomLightOff);
  // remoteControl.setCommand(1, kitchenLightOn, kitchenLightOff);
  // remoteControl.setCommand(3, stereoOnWithCD, stereoOff);

  remoteControl.setCommand(0, ceilingFanMedium, ceilingFanOff);
  remoteControl.setCommand(1, ceilingFanHigh, ceilingFanOff);

  remoteControl.onButtonWasPushed(0);
  remoteControl.offButtonWasPushed(0);
  print(remoteControl);
  remoteControl.undoButtonWasPushed();

  remoteControl.onButtonWasPushed(1);
  print(remoteControl);
  remoteControl.undoButtonWasPushed();

  // remoteControl.onButtonWasPushed(2);
  // remoteControl.offButtonWasPushed(2);
  // print(remoteControl);
  // remoteControl.undoButtonWasPushed();

  // remoteControl.onButtonWasPushed(3);
  // remoteControl.offButtonWasPushed(3);
  // print(remoteControl);
  // remoteControl.undoButtonWasPushed();
}
