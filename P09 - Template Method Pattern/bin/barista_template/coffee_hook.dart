import 'dart:io';
import 'caffeine_beverage_hook.dart';

class CoffeeWithHook extends CaffeineBeverageWithHook {
  @override
  void brew() {
    print('Dripping Coffee through filter');
  }

  @override
  void addCondiments() {
    print('Adding Sugar and Milk');
  }

  @override
  bool customerWantsCondiments() {
    String answer = getUserInput();

    if (answer.toLowerCase().startsWith('y')) {
      return true;
    } else {
      return false;
    }
  }

  String getUserInput() {
    String? answer;

    stdout.write('Would you like milk and sugar with your coffee (y/n)? ');

    try {
      answer = stdin.readLineSync();
    } catch (e) {
      stderr.writeln('IO error trying to read your answer');
    }
    if (answer == null) {
      return 'no';
    }
    return answer;
  }
}
