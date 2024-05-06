class Person {
  final String name;
  final int age;

  Person({required this.name, required this.age});

  factory Person.fromJson(Map<String, dynamic> json) {
    return Person(
      name: json['name'],
      age: json['age'],
    );
  }

  factory Person.fromString(String str) {
    List<String> x = str.split(', ');
    String name = x[0];
    int age = int.parse(x[1]);
    return Person(
      name: name,
      age: age,
    );
  }
}
