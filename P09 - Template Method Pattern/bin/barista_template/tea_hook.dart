import 'caffeine_beverage_hook.dart';
import 'dart:io';

class TeaWithHook extends CaffeineBeverageWithHook {
  @override
  void addCondiments() {
    print("Adding lemon");
  }

  @override
  void brew() {
    print("Steeping the tea");
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

    stdout.write('Would you like lemon with your tea (y/n)? ');

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
