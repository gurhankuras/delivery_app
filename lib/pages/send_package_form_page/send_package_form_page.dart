import 'package:dio/dio.dart';
import 'package:direct_select/direct_select.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import '../../services/order_service.dart';
import '../../utils/size_config.dart';
import '../send_package_confirmation_page/send_package_confirmation_page.dart';
import 'components/my_selection.dart';

class SendPackageFormPage extends StatefulWidget {
  @override
  _SendPackageFormPageState createState() => _SendPackageFormPageState();
}

class _SendPackageFormPageState extends State<SendPackageFormPage> {
  late final OrderService orderService;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    orderService = OrderService(dio: Dio());
  }

  Future<void> submitForm() async {
    final currentState = _formKey.currentState;
    if (currentState != null && currentState.validate()) {
      currentState.save();
      _formInfo['type'] = types[typeIndex!];
      _formInfo['category'] = categories[categoryIndex!];
      print(_formInfo);
      final hasBeenSent = await orderService.submitOrder(_formInfo);
      print(hasBeenSent);
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) =>
              SendPackageConfirmationPage(formData: _formInfo),
        ),
      );
    }
  }

  final Map<String, dynamic> _formInfo = {
    'senderName': '',
    'senderPhone': '',
    'senderAddress': '',
    'receiverName': '',
    'receiverPhone': '',
    'receiverAddress': '',
    'category': '',
    'type': '',
    'packageName': '',
  };

  int? categoryIndex = 0;
  int? typeIndex = 0;

  final categories = [
    'Electronics',
    'Food',
    'Cosmetics',
  ];

  final types = [
    'Document',
    'Bundle',
    'Package',
  ];
  List<MySelectionItem> _buildCategories() {
    return categories.map((e) => MySelectionItem(title: e)).toList();
  }

  List<MySelectionItem> _buildTypes() {
    return types.map((e) => MySelectionItem(title: e)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: SizeConfig.defaultSize * 2),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'Send Package',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ],
              ),
              SizedBox(height: SizeConfig.defaultSize),
              Text(
                'Sender Info',
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    ?.copyWith(fontWeight: FontWeight.w600),
              ),
              Divider(
                thickness: 2,
              ),
              SizedBox(height: SizeConfig.defaultSize),
              buildNameField(isSender: true),
              SizedBox(height: SizeConfig.defaultSize),
              buildPhoneField(isSender: true),
              SizedBox(height: SizeConfig.defaultSize),
              buildAddressField(isSender: true),
              SizedBox(height: SizeConfig.defaultSize * 3),
              Text(
                'Receiver Info',
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    ?.copyWith(fontWeight: FontWeight.w600),
              ),
              Divider(
                thickness: 2,
              ),
              SizedBox(height: SizeConfig.defaultSize),
              buildNameField(isSender: false),
              SizedBox(height: SizeConfig.defaultSize),
              buildPhoneField(isSender: false),
              SizedBox(height: SizeConfig.defaultSize),
              buildAddressField(isSender: false),
              SizedBox(height: SizeConfig.defaultSize * 3),
              Text(
                'Package Info',
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    ?.copyWith(fontWeight: FontWeight.w600),
              ),
              Divider(
                thickness: 2,
              ),
              SizedBox(height: SizeConfig.defaultSize),
              buildPackageNameField(),
              SizedBox(height: SizeConfig.defaultSize),
              buildPackageCategorySelect(),
              SizedBox(height: SizeConfig.defaultSize),
              buildPackageTypeSelect(),
              SizedBox(height: SizeConfig.defaultSize),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: submitForm,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: SizeConfig.defaultSize),
                      child: Text(
                        'Continue',
                        style: Theme.of(context).textTheme.headline6?.copyWith(
                              letterSpacing: 1,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    )),
              ),
              SizedBox(height: SizeConfig.defaultSize),
            ],
          ),
        ),
      ),
    );
  }

  TextFormField buildNameField({required bool isSender}) {
    return TextFormField(
      onSaved: (newValue) {
        if (isSender) {
          _formInfo['senderName'] = newValue;
        } else {
          _formInfo['receiverName'] = newValue;
        }
      },
      validator: (value) {
        if (value != null && value.trim() == '') {
          return 'This field cannot be empty';
        }
        return null;
      },
      textInputAction: TextInputAction.next,
      textCapitalization: TextCapitalization.words,
      keyboardType: TextInputType.name,
      decoration:
          getTextInputDecoration(iconData: Icons.person, labelText: 'Name'),
    );
  }

  TextFormField buildPhoneField({required bool isSender}) {
    return TextFormField(
      onSaved: (newValue) {
        if (isSender) {
          _formInfo['senderPhone'] = newValue;
        } else {
          _formInfo['receiverPhone'] = newValue;
        }
      },
      validator: (value) {
        if (value != null && value.trim() == '') {
          return 'This field cannot be empty';
        }
        return null;
      },
      textInputAction: TextInputAction.next,
      textCapitalization: TextCapitalization.words,
      keyboardType: TextInputType.phone,
      inputFormatters: [
        MaskTextInputFormatter(
            mask: '+90 (###) ### ## ##', filter: {'#': RegExp(r'[0-9]')})
      ],
      decoration: getTextInputDecoration(
        labelText: 'Phone number',
        iconData: Icons.phone,
      ),
    );
  }

  TextFormField buildAddressField({required bool isSender}) {
    return TextFormField(
      onSaved: (newValue) {
        if (isSender) {
          _formInfo['senderAddress'] = newValue;
        } else {
          _formInfo['receiverAddress'] = newValue;
        }
      },
      validator: (value) {
        if (value != null && value.trim() == '') {
          return 'This field cannot be empty';
        }
        return null;
      },
      textInputAction: TextInputAction.next,
      textCapitalization: TextCapitalization.words,
      keyboardType: TextInputType.streetAddress,
      decoration: getTextInputDecoration(
        labelText: 'Address',
        iconData: Icons.location_on,
      ),
    );
  }

  InputDecoration getTextInputDecoration({
    String? labelText,
    required IconData iconData,
    bool isFontAwesome = false,
  }) {
    return InputDecoration(
      labelText: labelText,
      hintText: '',
      hintStyle: TextStyle(
          fontWeight: FontWeight.w500, color: Colors.black.withOpacity(0.5)),
      prefixIcon: isFontAwesome
          ? Padding(
              padding: EdgeInsets.all(SizeConfig.defaultSize * 1.5),
              child: FaIcon(
                iconData,
                color: Colors.black.withOpacity(0.5),
              ),
            )
          : Icon(
              iconData,
              color: Colors.black.withOpacity(0.5),
            ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(
          SizeConfig.defaultSize * 2,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(
          SizeConfig.defaultSize * 2,
        ),
        borderSide: BorderSide(color: Colors.black.withOpacity(0.1)),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(
          SizeConfig.defaultSize * 2,
        ),
        borderSide: BorderSide(color: Colors.black.withOpacity(0.1)),
      ),
    );
  }

  TextFormField buildPackageNameField() {
    return TextFormField(
        validator: (value) {
          if (value != null && value.trim() == '') {
            return 'This field cannot be empty';
          }
          return null;
        },
        onSaved: (newValue) => _formInfo['packageName'] = newValue,
        textInputAction: TextInputAction.next,
        textCapitalization: TextCapitalization.words,
        keyboardType: TextInputType.name,
        decoration: getTextInputDecoration(
          iconData: FontAwesomeIcons.box,
          isFontAwesome: true,
          labelText: 'Package Name',
        ));
  }

  Column buildPackageCategorySelect() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Package Category',
          style: TextStyle(
              color: Colors.black.withOpacity(0.7),
              fontWeight: FontWeight.w500),
        ),
        DirectSelect(
            itemExtent: 75.0,
            selectedIndex: categoryIndex ?? 0,
            onSelectedItemChanged: (index) {
              setState(
                () {
                  categoryIndex = index;
                },
              );
            },
            mode: DirectSelectMode.tap,
            items: _buildCategories(),
            child: MySelectionItem(
              isForList: false,
              title: categories[categoryIndex ?? 0],
            )),
      ],
    );
  }

  Widget buildPackageTypeSelect() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Package Type',
          style: TextStyle(
              color: Colors.black.withOpacity(0.7),
              fontWeight: FontWeight.w500),
        ),
        DirectSelect(
            itemExtent: 75.0,
            selectedIndex: typeIndex ?? 0,
            onSelectedItemChanged: (index) {
              setState(
                () {
                  typeIndex = index;
                },
              );
            },
            mode: DirectSelectMode.tap,
            items: _buildTypes(),
            child: MySelectionItem(
              isForList: false,
              title: types[typeIndex ?? 0],
            )),
      ],
    );
  }
}
