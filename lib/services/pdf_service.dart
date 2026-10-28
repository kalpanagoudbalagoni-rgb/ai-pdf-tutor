import 'package:file_picker/file_picker.dart';

class PdfService {
  static Future<String?> pickPdf() async {
    final result = await FilePicker.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf'],
    );

    if (result != null && result.isNotEmpty) {
      return result.first.name;
    }

    return null;
  }
}