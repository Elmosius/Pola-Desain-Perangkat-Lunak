import 'package:input_output/Factory%20Pattern/Log/absctract_logger_creator.dart';
import 'package:input_output/Factory%20Pattern/Log/logger_product.dart';

class Client{
  void someMethodThatLogs(AbstractLoggerCreator loggerCreator){
    // Logger logger = loggerCreator.createrLogger();

    Logger logger = loggerCreator.createrLogger("Logger1");
    logger.log('halo ini pesan pertama');


    Logger logger2 = loggerCreator.createrLogger("Logger2");
    logger2.log("halo ini pesan kedua");

  }
}