import 'package:sbux/payment_method.dart';

class Cash implements PaymentMethod {
  @override
  double getTotalPayment(double totalTransaction) => totalTransaction;
}
