// final -> akan menunjuk objek yang sama terus, tidak bisa diubah, bisa dideklarasi dmna aja
//  const -> nilainya diasosiasikan objek yang sama, hanya dibuat sekali (compile time), bisa dideklrasikan di top-level /lokal


main(){
  var a = RegularClass(number: 5);
  var b = RegularClass(number: 5);

  print(identical(a, b));
}

class RegularClass{
  final int number;

  RegularClass({required this.number});  
}
