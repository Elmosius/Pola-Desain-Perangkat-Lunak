import 'package:input_output/Strategy%20Pattern/Game/aiopponent.dart';
import 'package:input_output/Strategy%20Pattern/Game/player.dart';
import 'package:input_output/Strategy%20Pattern/Game/strategy.dart';

class Game{
  final int level;
  final Player player;
  final AiOpponent aiopponent;

  const Game({ required this.level, required this.player,  required this.aiopponent});

  void start(){
    print('Game Mulai');
  }

  void update(){
    print(aiopponent.strategy.makeMove());
    print(player.strategy.makeMove());

  }

  void render(){}

}