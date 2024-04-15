import 'paket_internet.dart';

abstract class AddOns extends PaketInternet{
  final PaketInternet paket;

  AddOns(
      {required super.kouta,
      required super.masaAktif,
      required super.harga,
      required this.paket});
}
