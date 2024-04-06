import 'menu.dart';
import 'observer.dart';
import 'transaction.dart';

class TransactionMonitor implements Observer<Transaction> {
  @override
  void update(Transaction data) {
    for (Menu menu in data.menus) {
      print(menu.details);
    }
    print('-----------------------');
    print('Total: ${data.total}');
    print('Total Payment: ${data.totalPayment}');
    print('=======================');
    print('');
  }
}
