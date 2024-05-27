import 'jpeg.dart';

abstract interface class Filter {
  Jpeg apply(Jpeg image);
}
