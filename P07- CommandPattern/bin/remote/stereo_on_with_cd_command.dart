import 'command.dart';
import 'stereo.dart';

class StereoOnWithCDCommand implements Command {
  Stereo stereo;

  StereoOnWithCDCommand({required this.stereo});

  @override
  void execute() {
    stereo.turnOn();
    stereo.setCD();
    stereo.setVolume(11);
  }
  
  @override
  void undo() {
    stereo.turnOff();
  }
}
