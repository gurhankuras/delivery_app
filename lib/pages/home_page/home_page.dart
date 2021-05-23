import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:string_validator/string_validator.dart';

import '../../dao/order.dart';
import '../main_page/components/search_bar.dart';
import '../order_details_page/order_details_page.dart';

class HomePage extends StatelessWidget {
  String? validateTrackId(String id) {
    if (id.trim() == '') {
      return 'Must be filled!';
    }
    if (!isInt(id)) {
      return 'Invalid track id';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SearchBar(
        onSearch: (value) {
          final errorMessage = validateTrackId(value);
          if (errorMessage != null) {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text(errorMessage)));
          }
          Dio().get('http://10.0.2.2:5000/$value').then((res) {
            print(res.data);
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => OrderDetailPage(order: mockOrder),
            ));
          }).catchError((err) => print(err));
          // print('Bir hata oldu');
        },
        keyboardType: TextInputType.number,
        hintText: 'Gönderi sorgula',
      ),
    );
  }
}
