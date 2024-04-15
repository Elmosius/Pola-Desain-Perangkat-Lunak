import 'addons.dart';

class AddOnDisneyHotstar extends AddOns {
  AddOnDisneyHotstar({required super.paket})
      : super(kouta: paket.kouta, masaAktif: paket.masaAktif, harga: paket.harga + 60000);

}
