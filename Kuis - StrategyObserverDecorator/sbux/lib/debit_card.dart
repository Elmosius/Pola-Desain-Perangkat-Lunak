import 'payment_method.dart';

class DebitCard implements PaymentMethod {
  @override
  double getTotalPayment(double totalTransaction) => totalTransaction + 1000;
}
