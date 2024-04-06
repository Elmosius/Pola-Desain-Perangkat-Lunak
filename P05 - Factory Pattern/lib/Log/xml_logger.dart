// sebagai concrete product
import 'package:input_output/Factory%20Pattern/Log/logger_product.dart';

class XMLLogger implements Logger {
  @override
  void log(String message) {
    print("logger 1 : $message");
  }

}
