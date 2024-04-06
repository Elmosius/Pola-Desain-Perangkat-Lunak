import 'package:input_output/Strategy%20Pattern/Game/aggressive_strategy.dart';
import 'package:input_output/Strategy%20Pattern/Game/aiopponent.dart';
import 'package:input_output/Strategy%20Pattern/Game/defensive_strategy.dart';
import 'package:input_output/Strategy%20Pattern/Game/game.dart';
import 'package:input_output/Strategy%20Pattern/Game/player.dart';

main(){

  Player player1= Player(health: 50, strategy: AgressiveStrategy(), inventory: ['Pedang', 'Potion']);
  AiOpponent bot = AiOpponent(strategy: DefensiveStrategy(), health: 40, position: 'Mundur');

  Game game = Game(level: 5, player: player1, aiopponent: bot);

  game.update();
}