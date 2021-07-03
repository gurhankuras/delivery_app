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
    return '60db4e92d9c7be3740a56c5d';
  }
}
