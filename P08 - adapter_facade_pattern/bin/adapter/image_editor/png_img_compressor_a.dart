import 'png_img_compressor.dart';

class PngImageCompressorA implements PngImageCompressor {
  @override
  String compress(String bytes) {
    return '${bytes.split('as').first.trim()} (compressed) A';
  }
}
