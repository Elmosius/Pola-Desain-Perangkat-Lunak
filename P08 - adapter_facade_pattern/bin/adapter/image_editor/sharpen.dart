import 'png.dart';
import 'png_filter.dart';

class Sharpen implements PngFilter {
  @override
  Png apply(Png image) {
    return Png(description: '${image.description} (sharpen)');
  }
}
