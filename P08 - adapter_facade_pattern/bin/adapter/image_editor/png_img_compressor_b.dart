import 'png_img_compressor.dart';

class PngImageCompressorB implements PngImageCompressor {
  @override
  String compress(String bytes) {
    return '${bytes.split('as').first.trim()} (compressed) B';
  }
}
