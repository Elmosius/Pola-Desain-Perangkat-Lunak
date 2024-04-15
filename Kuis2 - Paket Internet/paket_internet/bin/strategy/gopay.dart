import 'metode_pembayaran.dart';

class Gopay implements MetodePembayaran {
  @override
  double total(double totalPembayaran) {
    return (totalPembayaran * 0.1) + totalPembayaran;
  }
}
