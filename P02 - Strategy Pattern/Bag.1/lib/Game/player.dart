import 'package:input_output/Strategy%20Pattern/Game/strategy.dart';

class Player implements Strategy{
  final int health;
  final Strategy strategy;
  final List<String> inventory;

  const Player({required this.health, required this.strategy, required this.inventory});
  
  @override
  String makeMove() {
    return '$strategy';
  }
  
}