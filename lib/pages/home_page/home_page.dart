import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:string_validator/string_validator.dart';

import '../../utils/size_config.dart';
import '../main_page/components/search_bar.dart';

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
      child: Column(
        children: [
          SvgPicture.asset(
            'assets/svgs/whereis.svg',
            height: SizeConfig.defaultSize * 17,
          ),
          SearchBar(
            onSearch: (value) {
              final errorMessage = validateTrackId(value);
              if (errorMessage != null) {
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text(errorMessage)));
                Alert(
                    context: context,
                    title: "LOGIN",
                    content: Column(
                      children: <Widget>[
                        TextField(
                          decoration: InputDecoration(
                            icon: Icon(Icons.account_circle),
                            labelText: 'Username',
                          ),
                        ),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            icon: Icon(Icons.lock),
                            labelText: 'Password',
                          ),
                        ),
                      ],
                    ),
                    buttons: [
                      DialogButton(
                        onPressed: () => Navigator.pop(context),
                        child: Text(
                          "LOGIN",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      )
                    ]).show();

                return;
              }
              Dio().get('http://10.0.2.2:5000/$value').then((res) {
                print(res.data);

                // Navigator.of(context).push(MaterialPageRoute(
                //   builder: (context) => OrderDetailPage(order: mockOrder),
                // ));
              }).catchError((err) => print(err));
              // print('Bir hata oldu');
            },
            keyboardType: TextInputType.number,
            hintText: 'Gönderi sorgula',
          ),
        ],
      ),
    );
  }
}
