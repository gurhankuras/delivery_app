import '../../domain/barcode/i_barcode_scanner_service.dart';
import '../core/env.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IBarcodeScannerService, env: [Env.prod])
class BarcodeScannerService implements IBarcodeScannerService {
  @override
  Future<String> scan() {
    return FlutterBarcodeScanner.scanBarcode(
      '#ff6666',
      'Cancel',
      false,
      ScanMode.DEFAULT,
    );
  }
}
