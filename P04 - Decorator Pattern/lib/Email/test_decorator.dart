import 'package:input_output/Decorator%20Pattern/Email/email.dart';
import 'package:input_output/Decorator%20Pattern/Email/external_email_decorator.dart';
import 'package:input_output/Decorator%20Pattern/Email/iemail.dart';

class TestDecorator{
  void sendEmail(IEmail email) {
    ExternalEmailDecorator external = ExternalEmailDecorator(email);
    print('Email sudah ditambah external : ${external.getContents()}');
  }
}

main(){
    TestDecorator td = TestDecorator();
    IEmail email = Email('nyoba test');
    td.sendEmail(email);

} 