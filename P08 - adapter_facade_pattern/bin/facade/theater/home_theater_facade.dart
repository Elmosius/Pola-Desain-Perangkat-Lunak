import 'amplifier.dart';
import 'cd_player.dart';
import 'popcorn_popper.dart';
import 'projector.dart';
import 'screen.dart';
import 'streaming_player.dart';
import 'theater_lights.dart';
import 'tuner.dart';

class HomeTheaterFacade {
  final Amplifier amp;
  final Tuner tuner;
  final StreamingPlayer player;
  final CdPlayer cd;
  final Projector projector;
  final TheaterLights lights;
  final Screen screen;
  final PopcornPopper popper;

  HomeTheaterFacade(
      {required this.amp,
      required this.tuner,
      required this.player,
      required this.cd,
      required this.projector,
      required this.lights,
      required this.screen,
      required this.popper});

  void watchMovie(String movie) {
    print('Get ready to watch a movie...');
    popper.turnOn();
    popper.pop();
    lights.dim(10);
    screen.down();
    projector.turnOn();
    projector.wideScreenMode();
    amp.turnOn();
    amp.setStreamingPlayer(player);
    amp.setSurroundSound();
    amp.setVolume(5);
    player.turnOn();
    player.playMovie(movie);
  }

  void endMovie() {
    print('Shutting movie theater down...');
    popper.turnOff();
    lights.turnOn();
    screen.up();
    projector.turnOff();
    amp.turnOff();
    player.stop();
    player.turnOff();
  }

  void listenToRadio(double frequency) {
    print('Tuning in the airwaves...');
    tuner.turnOn();
    tuner.setFrequency(frequency);
    amp.turnOn();
    amp.setVolume(5);
    amp.setTuner(tuner);
  }

  void endRadio() {
    print('Shutting down the tuner...');
    tuner.turnOff();
    amp.turnOff();
  }
}
