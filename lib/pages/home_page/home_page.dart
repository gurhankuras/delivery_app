import 'package:delivery_app/dao/order.dart';
import 'package:delivery_app/pages/main_page/components/search_bar.dart';
import 'package:delivery_app/pages/order_details_page/order_details_page.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SearchBar(
        onSearch: (value) async {
          try {
            final response = await Dio().get('http://10.0.2.2:5000/${value}');
            print(response.data);
          } catch (e) {
            print('Bir hata oldu');
          }
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => OrderDetailPage(order: mockOrder),
          ));
        },
        keyboardType: TextInputType.number,
        hintText: "Gönderi sorgula",
      ),
    );
  }
}
