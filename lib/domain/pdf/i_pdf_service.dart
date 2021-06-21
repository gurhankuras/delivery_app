import 'dart:io';

import '../../presentation/pages/pdf_components/pdf_page_manager.dart';

abstract class IPdfService {
  Future<File> generate(PdfPageBuilder pageBuilder);
  Future<void> openFile(File file);
}
