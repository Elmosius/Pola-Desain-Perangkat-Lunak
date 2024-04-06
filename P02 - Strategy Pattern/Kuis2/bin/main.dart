import 'package:kuis2/hero.dart';
import 'package:kuis2/warrior.dart';

void main(List<String> arguments) {
  Hero kesatria = Warrior();

  print(kesatria.healthPoint);
  kesatria.basicAttack();
  kesatria.useWeapon();

}


// Observer patternt
// Observer itu behavioral pattern yang digunakan untuk mengatur hubungan objek-objek pada 
// saat runtime. Observerpun membentuk hubungan publisher-subcriber dimana satu publisher 
// memiliki banyak subscriber (berarti satu publisher akan mengirimkan suatu pesan / updated state 
// maka banyak subscriber akan menerima updatean dari publisher, hal ini menandai bahwa hubungan 
// percakapan hanya satu arah)

// Biasanya digunakan untuk :
// RSS feed (ketika ada update berita, maka otomatis kita akan menerimanya)
// Mekanisme follow di twitter
