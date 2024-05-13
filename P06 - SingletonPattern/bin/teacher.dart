import 'person.dart';

class Teacher extends Person {
  final String teacherId;

  Teacher({required super.name, required this.teacherId});

  factory Teacher.fromJson(Map<String, dynamic> json) {
    return Teacher(
      name: json['name'],
      teacherId: json['teacherId'],
    );
  }
}
