import 'dart:io';

void main(List<String> arguments) {

  // input output
  String? input;
  input = stdin.readLineSync();
  print(input);
  print('');

  // operator
  // +, -, /, ~/, --, ++
  // &&, ||, !, !=

  // merubah string menjadi int 
  String string = '10';

  int number = int.parse(string);
  int? number2 = int.tryParse(string);

  print(number);
  print(number2);
  print('');

  // merubah int/double menjadi string
  int integer = 10;

  String string2 = integer.toString();
  print (string2);
  print('');

  // pembulatan ke atas x.ceil()
  // pembulatan ke bawah x.floor()
  // pembulatan berdassarkan desimal x.round()

  print(integer.ceil());
  print(integer.floor());
  print(integer.round());
  print('');


  //  Null assertion operator (!)
  // If-null operator (??)
  // if-null assignment operator (??=)

  String string3 = "asd";
  int? number3 = int.tryParse(string3);
  int result = number3! +2;
  print(result);
  print('');


  



}
