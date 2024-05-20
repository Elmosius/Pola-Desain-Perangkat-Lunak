import 'ceilingfan.dart';
import 'command.dart';

class CeilingFanHighCommand implements Command {
  final CeilingFan ceilingFan;
  int? prevSpeed;

  CeilingFanHighCommand(this.ceilingFan);

  @override
  void execute() {
    prevSpeed = ceilingFan.getSpeed();
    ceilingFan.high();
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
