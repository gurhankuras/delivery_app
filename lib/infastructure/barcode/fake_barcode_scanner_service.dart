import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

import '../../domain/barcode/i_barcode_scanner_service.dart';
import '../../injection.dart';
import '../core/env.dart';

@LazySingleton(as: IBarcodeScannerService, env: [Env.dev])
class FakeBarcodeScannerService implements IBarcodeScannerService {
  @override
  Future<String> scan() async {
    final picker = getIt<ImagePicker>();
    await picker.getImage(source: ImageSource.camera);
    return '60e1afd981bcfb383c00323a';
  }
}
