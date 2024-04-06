import 'package:input_output/Factory%20Pattern/Log/absctract_logger_creator.dart';
import 'package:input_output/Factory%20Pattern/Log/logger_product.dart';
import 'package:input_output/Factory%20Pattern/Log/xml_logger.dart';
import 'package:input_output/Factory%20Pattern/Log/xml_logger2.dart';

class XMLLoggerCreator implements AbstractLoggerCreator{
  @override
  Logger createrLogger(String pilihObject) {
    Logger logger;
    if(pilihObject == "Logger1"){
      logger = XMLLogger();
    }
    else{
      logger = XMLLogger2();
    }
    return logger;
  }

  @override
  Logger getLogger(String pilihObject) {
    Logger logger = createrLogger(pilihObject);
    return logger;
  }

} 