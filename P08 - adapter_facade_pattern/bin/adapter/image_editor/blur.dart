import 'filter.dart';
import 'jpeg.dart';

class Blur implements Filter{
  @override
  Jpeg apply(Jpeg image) {
    return Jpeg(description: '${image.description} (blur)');
  }

}