
import 'dart:typed_data';

class PdfModel {
  final String name;
  final int sizeInBytes;
  final Uint8List bytes;

  const PdfModel({
    required this.name,
    required this.sizeInBytes,
    required this.bytes,
  });

  String get formattedSize {
    final sizeInKb = sizeInBytes / 1024;

    if (sizeInKb >= 1024) {
      return '${(sizeInKb / 1024).toStringAsFixed(2)} MB';
    }

    return '${sizeInKb.toStringAsFixed(2)} KB';
  }
}
