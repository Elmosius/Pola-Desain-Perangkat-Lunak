import 'package:input_output/Decorator%20Pattern/Email/iemail.dart';

abstract class EmailDecorator implements IEmail{
    late IEmail originalEmail;
}