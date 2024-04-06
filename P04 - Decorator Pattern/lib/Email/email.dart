import 'package:input_output/Decorator%20Pattern/Email/iemail.dart';

class Email implements IEmail {
  late String content;

  Email(String c) {
    content = c;
  }

  @override
  String getContents() {
    return content;
  }
}
