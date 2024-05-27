import 'filter.dart';
import 'jpeg.dart';
import 'jpeg_reader.dart';
import 'jpeg_to_png_converter.dart';
import 'png.dart';
import 'png_filter.dart';
import 'png_img_compressor.dart';

class Adapter implements Filter {
  final PngFilter _pngFilter;
  final JpegToPngConverter _converter;

  Adapter({required PngFilter pngFilter, required JpegToPngConverter converter})
      : _pngFilter = pngFilter,
        _converter = converter;

  Jpeg pngToJpeg(Png image) {
    return Jpeg(description: image.description);
  }

  @override
  Jpeg apply(Jpeg image) {
    Png pngImage = _converter.convert(image);
    Png newPngImage = _pngFilter.apply(pngImage);
    return pngToJpeg(newPngImage);
  }
}
