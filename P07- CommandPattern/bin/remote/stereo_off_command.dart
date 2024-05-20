import 'command.dart';
import 'stereo.dart';

class StereoOffCommand implements Command {
  final Stereo stereo;

  StereoOffCommand({required this.stereo});

  @override
  void execute() {
    stereo.turnOff();
  }

  @override
  void undo() {
    stereo.turnOn();
    stereo.setCD();
    stereo.setVolume(11);
  }
}
