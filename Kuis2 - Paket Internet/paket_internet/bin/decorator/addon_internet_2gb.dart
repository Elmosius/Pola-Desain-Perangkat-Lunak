import 'addons.dart';

class AddOnInternet2GB extends AddOns {
  AddOnInternet2GB({required super.paket})
      : super(kouta: paket.kouta + 2, masaAktif: paket.masaAktif, harga: paket.harga + 5000);

}
