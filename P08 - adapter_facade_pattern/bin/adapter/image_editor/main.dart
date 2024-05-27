import 'adapter.dart';
import 'beautify.dart';
import 'image_editor.dart';
import 'jpeg.dart';
import 'jpeg_reader.dart';
import 'jpeg_to_png_converter.dart';
import 'png_img_compressor_a.dart';
import 'png_writer.dart';

main() {
  Jpeg imageJpg = Jpeg(description: 'Bunga Melati');
  ImageEditor editor = ImageEditor();
  editor.editImage(
      imageJpg,
      Adapter(
          pngFilter: Beautify(),
          converter: JpegToPngConverter(
              jpegReader: JpegReader(),
              pngImageCompressor: PngImageCompressorA(),
              pngWriter: PngWriter())));
}
