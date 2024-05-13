import 'person.dart';

class Student extends Person {
  final String studentId;

  Student({required super.name, required this.studentId});

  factory Student.fromJson(Map<String, dynamic> json) {
    return Student(
      name: json['name'],
      studentId: json['studentId'],
    );
  }

}
