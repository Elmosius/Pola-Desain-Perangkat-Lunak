import 'decorator/addon_disney_hotstar.dart';
import 'decorator/addon_internet_2gb.dart';
import 'decorator/internet_sakti_8gb.dart';
import 'decorator/paket_internet.dart';
import 'strategy/transaksi.dart';
import 'strategy/gopay.dart';

main() {
  PaketInternet paketInternet = AddOnDisneyHotstar(paket: InternetSakti8GB());
  print('===================================');
  print('Paket Internet');
  print('===================================');
  print('${paketInternet.kouta} GB');
  print('Rp. ${paketInternet.harga}');
  print('Masa Aktif ${paketInternet.masaAktif} Hari');

  print('-----------------------------------');
  Transaksi transaksi = Transaksi();
  transaksi.addPaket(paketInternet);
  print('Total Rp. ${transaksi.total}');
  
  transaksi.metodePembayaran(Gopay());
  print('Total + Admin =  Rp. ${transaksi.totalPembayaran}');
  

}

// Ini memakai pattern :

// > Strategy : untuk bagian dalam pemilihan paket internet yang mau dipilih
// lalu pada bagian transaksi (mau milih pembayaran pakai gopay atau link aja)
// > Decorator : untuk fitur AddOn jadi si pengguna dapat memilih paket internet + mau tambahan apanya
// > Observer : untuk fitur transaksi juga yang menampilkan update apa aja yang mau dibeli konsumen di observer nantinya (monitor)

