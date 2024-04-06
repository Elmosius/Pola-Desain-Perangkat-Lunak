import 'payment_method.dart';

class CreditCard implements PaymentMethod {
  @override
  double getTotalPayment(double totalTransaction) => totalTransaction * 1.03;
}
