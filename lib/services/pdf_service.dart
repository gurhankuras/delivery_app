import 'dart:io';

import 'package:delivery_app/pdf_components/receipt_pdf.dart';
import 'package:flutter/services.dart';
import 'package:open_file/open_file.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';

class PdfService {
  Future<File> generateSamplePdf() async {
    final pdf = Document();

    pdf.addPage(
      await ReceiptPdf().getPage(),
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
