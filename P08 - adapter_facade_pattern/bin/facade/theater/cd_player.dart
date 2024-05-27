import 'amplifier.dart';

class CdPlayer {
  final String description;
  int currentTrack = 0;
  final Amplifier amplifier;
  String? title;

  CdPlayer({required this.description, required this.amplifier});

  void turnOn() {
    print('$description on');
  }

  void turnOff() {
    print('$description off');
  }

  void eject() {
    title = null;
    print('$description eject');
  }

  void play(String title) {
    this.title = title;
    currentTrack = 0;
    print('$description playing "$title"');
  }

  void playTrack(int track) {
    if (title == null) {
      print('$description can\'t play track $track, no cd inserted');
    } else {
      currentTrack = track;
      print('$description playing track $currentTrack');
    }
  }

  void stop() {
    currentTrack = 0;
    print('$description stopped');
  }

  void pause() {
    print('$description paused "${title ?? ''}"');
  }

  @override
  String toString() {
    return description;
  }
}
