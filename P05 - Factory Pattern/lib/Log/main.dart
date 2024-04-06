import 'package:input_output/Factory%20Pattern/Log/absctract_logger_creator.dart';
import 'package:input_output/Factory%20Pattern/Log/client.dart';
import 'package:input_output/Factory%20Pattern/Log/xml_logger_creator.dart';

main(){
  AbstractLoggerCreator creator = XMLLoggerCreator();

  Client client = Client();
  client.someMethodThatLogs(creator);

}