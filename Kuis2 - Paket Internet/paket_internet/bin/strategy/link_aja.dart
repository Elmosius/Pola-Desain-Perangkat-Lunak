import 'metode_pembayaran.dart';

class LinkAja implements MetodePembayaran {
  @override
  double total(double totalPembayaran) {
    return totalPembayaran + 2000;
  }

  
}
