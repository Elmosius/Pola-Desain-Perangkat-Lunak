import 'filter.dart';
import 'jpeg.dart';

class ImageEditor {
  void editImage(Jpeg image, Filter filter) {
    print(image.description);
    Jpeg newImage = filter.apply(image);
    print(newImage.description);
  }
}
