// generics => fungsi mengganti tipedata ()

import 'package:input_output/secure_box.dart';

main(){
  var a = SecureBox<String>('halo', '123');
  
  print(a.getData('123'));
}