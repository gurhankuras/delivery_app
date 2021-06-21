import 'package:string_validator/string_validator.dart';

class HomePageViewModel {
  String? _validateTrackId(String id) {
    if (id.trim() == '') {
      return 'Must be filled!';
    }
    if (!isInt(id)) {
      return 'Invalid track id';
    }
    return null;
  }

  //  void searchTrackId(String value) {
  //             final errorMessage = validateTrackId(value);
  //             if (errorMessage != null) {
  //               ScaffoldMessenger.of(context)
  //                   .showSnackBar(SnackBar(content: Text(errorMessage)));

  //               return;
  //             }
  //             Navigator.of(context).push(
  //               MaterialPageRoute(
  //                 builder: (context) => OrderDetailPage(
  //                   trackNo: value,
  //                 ),
  //               ),
  //             );
  //           },
}
