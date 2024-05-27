import 'png.dart';

class PngWriter{
  Png write(String compressedBytes)=> Png(description: compressedBytes.split('(compressed)').first.trim());
}