
import 'package:file_picker/file_picker.dart';
import '../models/pdf_model.dart';

class PdfService {
  static Future<PdfModel?> pickPdf() async {
    final file = await FilePicker.pickFile(
      type: FileType.custom,
      allowedExtensions: ['pdf'],
    );

    if (file == null) {
      return null;
    }

    final bytes = await file.readAsBytes();
    final fileSize = file.lengthSync() ?? await file.length();

    if (fileSize == null) {
      throw Exception('Unable to determine PDF file size.');
    }

    return PdfModel(
      name: file.name,
      sizeInBytes: fileSize,
      bytes: bytes,
    );
  }
}
