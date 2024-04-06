// type data dynamic : type data yang bisa berubah ubah, sesuai objek terakhir yang 
// dibuat/ ditunjuk

// type dataa var : type data yang bisa kita deklarasikan ke tipe apapun, jika saat pertama kali sudah menunjuk pada objek tertenu 
//maka kalau var itu dpakai /idubah lgi harus sejenis dgn sblmnya...


class Person{
  String name = 'No name';
}

void main(){
  dynamic myDynamic;

  myDynamic = 2;
  myDynamic = 'Hello';
  myDynamic = Person();

  print((myDynamic as Person).name );   


  var myVar;
  myVar = 'Hello';
  myVar =  Person();

  print(myVar.name);
}