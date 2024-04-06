import 'package:input_output/Strategy%20Pattern/Game/strategy.dart';

class AiOpponent implements Strategy{
  final Strategy strategy;
  final int health;
  final String position;

  AiOpponent({required this.strategy, required this.health, required this.position});
  
  @override
  String makeMove() {
    return '$position sambil $strategy';
  }
}
