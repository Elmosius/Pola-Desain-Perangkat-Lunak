import 'student.dart';
import 'teacher.dart';

abstract class Person {
  final String name;

  Person({required this.name});

  factory Person.fromJson(Map<String, dynamic> json) {
    if (json.containsKey('studentId')) {
      return Student.fromJson(json);
    } else{
      return Teacher.fromJson(json);
    }
  }
}
