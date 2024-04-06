import 'package:input_output/Decorator%20Pattern/Email/email_decorator.dart';
import 'package:input_output/Decorator%20Pattern/Email/iemail.dart';

class ExternalEmailDecorator extends EmailDecorator{
  late String content;

  ExternalEmailDecorator(IEmail basicEmail){
    originalEmail = basicEmail;
  }

  String addDisclamer(String message){
    return '$message --- Company Disclaimer';
  }

  @override
  String getContents() {
    content = addDisclamer(originalEmail.getContents());
    return content;
  }

}