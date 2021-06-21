import 'package:pdf/widgets.dart';

abstract class PdfPageBuilder {
  Future<Page> build();
}
