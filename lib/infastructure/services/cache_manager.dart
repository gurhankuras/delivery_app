// import 'dart:convert';

// import 'package:shared_preferences/shared_preferences.dart';

// import 'package:delivery_app/domain/core/json_serializable.dart';
// import 'package:delivery_app/infastructure/services/key_generator.dart';

// class CacheService {
//   KeyGenerator keyGenerator;
//   SharedPreferences prefs;

//   CacheService({
//     required this.keyGenerator,
//     required this.prefs,
//   });

//   // String generateKey<T>(int id) => '${T.toString()}$id';

//   bool keyMatched<T>(String key) {
//     final keyRegex = RegExp('^${T}[0-9]+\$');
//     return keyRegex.hasMatch(key);
//   }

//   Future<bool> saveItem<T extends GJsonSerializable<T>>(int id, T item) async {
//     if (isCached<T>(id)) {
//       return false;
//     }
//     final key = generateKey<T>(id);
//     var itemMap = item.toJson();
//     final saved = await prefs.setString(key, json.encode(itemMap));
//     return saved;
//   }

//   Future<bool> removeItem<T>(int id) async {
//     final key = generateKey<T>(id);
//     final removed = await prefs.remove(key);
//     return removed;
//   }

//   bool isCached<T>(int id) {
//     final key = generateKey<T>(id);
//     return prefs.containsKey(key);
//   }

//   T? getItem<T extends GJsonSerializable<T>>(int id, T model) {
//     final key = generateKey<T>(id);
//     final valueString = prefs.getString(key);
//     if (valueString is String) {
//       var valueMap = json.decode(valueString);
//       if (valueMap is Map<String, dynamic>) {
//         return model.fromJson(valueMap);
//       }
//     }
//     return null;
//   }

//   List<T> getItems<T extends GJsonSerializable>(T model) {
//     final keys = prefs.getKeys();

//     final items = <T>[];
//     keys.where((key) => keyMatched<T>(key)).forEach((correctKey) {
//       final item = prefs.getString(correctKey)!;
//       var itemMap = json.decode(item);
//       assert(itemMap is Map<String, dynamic>);
//       items.add(model.fromJson(itemMap));
//     });
//     return items;
//   }

//   void clearAll<T>() {
//     prefs.getKeys().forEach((key) {
//       if (keyMatched<T>(key)) {
//         prefs.remove(key);
//       }
//     });
//   }

//   void clear() {
//     prefs.clear();
//   }
// }
