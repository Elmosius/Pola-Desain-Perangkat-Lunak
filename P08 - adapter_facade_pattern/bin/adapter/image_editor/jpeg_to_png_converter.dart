import 'jpeg.dart';
import 'jpeg_reader.dart';
import 'png.dart';
import 'png_img_compressor.dart';
import 'png_writer.dart';

class JpegToPngConverter {
  final JpegReader jpegReader;
  final PngImageCompressor pngImageCompressor;
  final PngWriter pngWriter;

  JpegToPngConverter(
      {required this.jpegReader,
      required this.pngImageCompressor,
      required this.pngWriter});

  Png convert(Jpeg image) {
    print("Reading $image");
    String bytes = jpegReader.read(image);
    print("Compressing $bytes");
    String compressedBytes = pngImageCompressor.compress(bytes);
    print("writing to png: $compressedBytes");
    Png pngImage = pngWriter.write(compressedBytes);
    print('png image: ${pngImage.description}');
    return pngImage;
  }
}
