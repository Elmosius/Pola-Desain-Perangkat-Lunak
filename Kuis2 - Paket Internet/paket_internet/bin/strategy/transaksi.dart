import '../decorator/paket_internet.dart';
import 'metode_pembayaran.dart';

class Transaksi {
  final List<PaketInternet> _paket = [];
  late MetodePembayaran _metodePembayaran;

  void addPaket(PaketInternet paket) {
    _paket.add(paket);
  }

  double get total{
    double total = 0;

    for (var paket in _paket) {
      total += paket.harga;
    }

    return total;
  }

  void metodePembayaran(MetodePembayaran m){
    _metodePembayaran = m; 
  }

  double get totalPembayaran {
    return _metodePembayaran.total(total);
  }

}
