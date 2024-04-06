// sebagai creator

import 'package:input_output/Factory%20Pattern/Log/logger_product.dart';

abstract class AbstractLoggerCreator{
  Logger createrLogger(String pilihObject);

  Logger getLogger(String pilihObject){
    Logger logger = createrLogger(pilihObject);
    return logger;
  }

}