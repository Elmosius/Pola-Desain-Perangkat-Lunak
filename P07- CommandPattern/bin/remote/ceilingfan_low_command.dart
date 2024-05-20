import 'ceilingfan.dart';
import 'command.dart';

class CeilingFanLowCommand implements Command {
  final CeilingFan ceilingFan;
  int? prevSpeed;

  CeilingFanLowCommand(this.ceilingFan);

  @override
  void execute() {
    prevSpeed = ceilingFan.getSpeed();
    ceilingFan.low();
  }

  @override
  void undo() {
    if (prevSpeed == CeilingFan.h) {
      ceilingFan.high();
    } else if (prevSpeed == CeilingFan.m) {
      ceilingFan.medium();
    } else if (prevSpeed == CeilingFan.l) {
      ceilingFan.low();
    } else if (prevSpeed == CeilingFan.o) {
      ceilingFan.off();
    }
  }
}
