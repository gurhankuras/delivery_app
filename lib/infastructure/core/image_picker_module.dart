import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

@module
abstract class ImagePickerModule {
  @LazySingleton()
  ImagePicker get imagePicker => ImagePicker();
}
