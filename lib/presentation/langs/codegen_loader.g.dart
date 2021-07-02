// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>> load(String fullPath, Locale locale ) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> en_US = {
  "hello_text": "hello",
  "edit_order_status": "Edit Order Status",
  "send_package": "Send Package",
  "search_package": "Search Package",
  "home": "Home",
  "send": "Send",
  "statistics": "Statistics",
  "name": "Name",
  "select_date": "Select Date",
  "tr_id": "Tr ID",
  "phone_number": "Phone Number",
  "address": "Address",
  "form_info_title": "{} Info",
  "package": "Package",
  "sender": "Sender",
  "receiver": "Receiver",
  "continue_text": "Continue"
};
static const Map<String,dynamic> tr_TR = {
  "hello_text": "merhaba",
  "edit_order_status": "Kargo Durumu Güncelle",
  "send_package": "Paket Gönder",
  "search_package": "Gönderi Sorgula",
  "home": "Ana Sayfa",
  "send": "Gönder",
  "statistics": "İstatistikler",
  "name": "Ad",
  "select_date": "Tarih Seç",
  "tr_id": "T.C Numarası",
  "phone_number": "Telefon Numarası",
  "address": "Adres",
  "form_info_title": "{} Bilgisi",
  "package": "Gönderi",
  "sender": "Gönderici",
  "receiver": "Alıcı",
  "continue_text": "Devam Et"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"en_US": en_US, "tr_TR": tr_TR};
}
