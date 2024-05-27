import 'streaming_player.dart';

class Projector {
  final String description;
  final StreamingPlayer player;

  Projector({required this.description, required this.player});

  void turnOn() {
    print('$description on');
  }

  void turnOff() {
    print('$description off');
  }

  void wideScreenMode() {
    print('$description in widescreen mode (16x9 aspect ratio)');
  }

  void tvMode() {
    print('$description in tv mode (4x3 aspect ratio)');
  }

  @override
  String toString() {
    return description;
  }
}
