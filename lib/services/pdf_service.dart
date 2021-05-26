import 'dart:io';

import 'package:open_file/open_file.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';
import 'package:pdf/widgets.dart';

import '../pdf_components/pdf_page_manager.dart';

class PdfService {
  Future<File> generate(PdfPageManager pageManager) async {
    final pdf = Document();

    pdf.addPage(
      await pageManager.getPage(),
    );
    return _saveDocument(name: 'sample.pdf', pdf: pdf);
  }

  Future<File> _saveDocument({
    required String name,
    required Document pdf,
  }) async {
    final bytes = await pdf.save();
    final dir = await getApplicationDocumentsDirectory();
    final pdfFile = File(path.join(dir.path, name));

    await pdfFile.writeAsBytes(bytes);
    return pdfFile;
  }

  Future<void> openFile(File file) async {
    final url = file.path;
    await OpenFile.open(url);
  }
}
