import 'png.dart';
import 'png_filter.dart';

class Beautify implements PngFilter {
  @override
  Png apply(Png image) {
    return Png(description: '${image.description} (beautify)');
  }
}
