import 'streaming_player.dart';
import 'tuner.dart';

class Amplifier {
  final String description;
  Tuner? tuner;
  StreamingPlayer? player;

  Amplifier({required this.description});

  void turnOn() {
    print('$description on');
  }

  void turnOff() {
    print('$description off');
  }

  void setStereoSound() {
    print('$description stereo mode on');
  }

  void setSurroundSound() {
    print('$description surround sound on (5 speakers, 1 subwoofers)');
  }

  void setVolume(int level) {
    print('$description setting volume to $level');
  }

  void setTuner(Tuner? tuner) {
    print('$description setting tuner to $tuner');
  }

  void setStreamingPlayer(StreamingPlayer player) {
    print("$description setting Streaming player to $player");
    this.player = player;
  }

  String toSring() {
    return description;
  }
}
