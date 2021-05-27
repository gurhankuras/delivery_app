import '../../services/pdf_service.dart';
import 'package:direct_select/direct_select.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

import '../../dao/order.dart';
import '../../providers/order_form_data.dart';
import '../../utils/size_config.dart';
import '../send_package_confirmation_page/send_package_confirmation_page.dart';
import 'components/my_selection.dart';

class SendPackageFormPage extends StatefulWidget {
  @override
  _SendPackageFormPageState createState() => _SendPackageFormPageState();
}

class _SendPackageFormPageState extends State<SendPackageFormPage> {
  final _formKey = GlobalKey<FormState>();
  late final Order? order;
  // late final Map<String, dynamic> _formInfo;

  @override
  void initState() {
    super.initState();
    order =
        context.read<OrderFormData>().order ?? Order.fake() /*Order.empty()*/;
    // _formInfo = order!.toJson();
  }

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

  int categoryIndex = 0;
  int typeIndex = 0;

  Future<void> submitForm() async {
    final currentState = _formKey.currentState;
    if (currentState != null && currentState.validate()) {
      currentState.save();
      order!.packageType = types[typeIndex];
      order!.packageCategory = categories[categoryIndex];

      context.read<OrderFormData>().saveOrder(order! /*_formInfo*/);
      print(order!.sender!.toJson());
      print(order!.receiver!.toJson());

      // ignore: unawaited_futures
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => Provider(
              create: (context) => PdfService(),
              child: SendPackageConfirmationPage()),
        ),
      );
      // // }
    }
  }

  List<MySelectionItem> _buildCategories() {
    return categories.map((e) => MySelectionItem(title: e)).toList();
  }

  List<MySelectionItem> _buildTypes() {
    return types.map((e) => MySelectionItem(title: e)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Send Package',
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: SizeConfig.defaultSize * 2),
          child: SingleChildScrollView(
            child: Column(
              children: [
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
                buildTrIdField(isSender: true),
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
                buildTrIdField(isSender: false),
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
                          style:
                              Theme.of(context).textTheme.headline6?.copyWith(
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
      ),
    );
  }

  TextFormField buildNameField({required bool isSender}) {
    return TextFormField(
      initialValue: isSender ? order!.sender!.name : order!.receiver!.name,
      onSaved: (newValue) {
        if (isSender) {
          // _formInfo['sender']['name'] = newValue;
          order!.sender!.name = newValue!;
        } else {
          // _formInfo['receiver']['name'] = newValue;
          order!.receiver!.name = newValue!;
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

  TextFormField buildTrIdField({required bool isSender}) {
    return TextFormField(
      initialValue: isSender ? order!.sender!.trId : order!.receiver!.trId,
      onSaved: (newValue) {
        print(newValue);

        if (isSender) {
          order!.sender!.trId = newValue!;
        } else {
          order!.receiver!.trId = newValue!;
        }
      },
      validator: (value) {
        if (value != null && value.trim() == '') {
          return 'This field cannot be empty';
        }
        return null;
      },
      inputFormatters: [
        MaskTextInputFormatter(
            mask: '###########', filter: {'#': RegExp(r'[0-9]')})
      ],
      textInputAction: TextInputAction.next,
      keyboardType: TextInputType.number,
      decoration: getTextInputDecoration(
          iconData: FontAwesomeIcons.idCard,
          labelText: 'Tr Id',
          isFontAwesome: true),
    );
  }

  TextFormField buildPhoneField({required bool isSender}) {
    return TextFormField(
      initialValue:
          isSender ? order!.sender!.phoneNumber : order!.receiver!.phoneNumber,
      onSaved: (newValue) {
        if (isSender) {
          order!.sender!.phoneNumber = newValue!;
          // _formInfo['sender']['phoneNumber'] = newValue;
        } else {
          // _formInfo['receiver']['phoneNumber'] = newValue;
          order!.receiver!.phoneNumber = newValue!;
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
      initialValue:
          isSender ? order!.sender!.address : order!.receiver!.address,
      onSaved: (newValue) {
        if (isSender) {
          // _formInfo['sender']['address'] = newValue;
          order!.sender!.address = newValue!;
        } else {
          // _formInfo['receiver']['address'] = newValue;
          order!.receiver!.address = newValue!;
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
              padding: EdgeInsets.all(SizeConfig.defaultSize * 1.3),
              child: FaIcon(
                iconData,
                size: 20,
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
        initialValue: order!.packageName,
        validator: (value) {
          if (value != null && value.trim() == '') {
            return 'This field cannot be empty';
          }
          return null;
        },
        onSaved: (newValue) {
          order!.packageName = newValue;
        },
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
            selectedIndex: categoryIndex,
            onSelectedItemChanged: (index) {
              setState(
                () {
                  categoryIndex = index!;
                },
              );
            },
            mode: DirectSelectMode.tap,
            items: _buildCategories(),
            child: MySelectionItem(
              isForList: false,
              title: categories[categoryIndex],
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
            selectedIndex: typeIndex,
            onSelectedItemChanged: (index) {
              setState(
                () {
                  typeIndex = index!;
                },
              );
            },
            mode: DirectSelectMode.tap,
            items: _buildTypes(),
            child: MySelectionItem(
              isForList: false,
              title: types[typeIndex],
            )),
      ],
    );
  }
}
