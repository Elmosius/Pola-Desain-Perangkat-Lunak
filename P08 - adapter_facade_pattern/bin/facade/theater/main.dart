import 'screen.dart';
import 'amplifier.dart';
import 'cd_player.dart';
import 'home_theater_facade.dart';
import 'popcorn_popper.dart';
import 'projector.dart';
import 'streaming_player.dart';
import 'theater_lights.dart';
import 'tuner.dart';

main() {
  Amplifier amp = Amplifier(description: 'Amplifier');
  Tuner tuner = Tuner(description: "AM/FM Tuner", amplifier: amp);
  StreamingPlayer player =
      StreamingPlayer(description: "Streaming Player", amplifier: amp);
  CdPlayer cd = CdPlayer(description: "CD Player", amplifier: amp);
  Projector projector = Projector(description: "Projector", player: player);
  TheaterLights lights = TheaterLights(description: "Theater Ceiling Lights");
  Screen screen = Screen(description: "Theater Screen");
  PopcornPopper popper = PopcornPopper(description: "Popcorn Popper");

  HomeTheaterFacade homeTheater = HomeTheaterFacade(
      amp: amp,
      tuner: tuner,
      player: player,
      cd: cd,
      popper: popper,
      screen: screen,
      lights: lights,
      projector: projector);

  homeTheater.watchMovie("Raiders of the Lost Ark");
  homeTheater.endMovie();
}
