import 'package:pdf/widgets.dart';

abstract class PdfPageManager {
  Future<Page> getPage();
}
