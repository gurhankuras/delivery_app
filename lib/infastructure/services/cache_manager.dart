import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:delivery_app/domain/core/general_failures.dart';
import 'package:delivery_app/domain/core/i_key_generator.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../domain/core/failures.dart';

class CacheService {
  IKeyGenerator keyGenerator;
  SharedPreferences prefs;

  CacheService({
    required this.keyGenerator,
    required this.prefs,
  });

  Future<bool> saveItem<T>(String id, Map<String, dynamic> jsonMap) async {
    if (isCached<T>(id)) {
      return false;
    }
    final key = keyGenerator.generate<T>(id);
    final saved = await prefs.setString(key, json.encode(jsonMap));
    return saved;
  }

  Future<bool> removeItem<T>(String id) async {
    final key = keyGenerator.generate<T>(id);
    final removed = await prefs.remove(key);
    return removed;
  }

  bool isCached<T>(String id) {
    final key = keyGenerator.generate<T>(id);
    return prefs.containsKey(key);
  }

  Either<GeneralFailure<String>, Map<String, dynamic>> getItem<T>(String id) {
    final key = keyGenerator.generate<T>(id);
    final valueString = prefs.getString(key);
    if (valueString is String) {
      var valueMap = json.decode(valueString);
      if (valueMap is Map<String, dynamic>) {
        return right(valueMap);
      }
    }
    return left(GeneralFailure.notFound(notFoundValue: id));
  }

  Either<GeneralFailure<String>, List<Map<String, dynamic>>> getItems<T>() {
    final keys = prefs.getKeys();
    final items = <Map<String, dynamic>>[];
    var failed = false;

    keys.where((key) => keyGenerator.hasMatch<T>(key)).forEach(
      (correctKey) {
        final item = prefs.getString(correctKey)!;
        var itemMap = json.decode(item);
        if (itemMap is Map<String, dynamic>) {
          items.add(itemMap);
        } else {
          failed = true;
        }
      },
    );

    return failed
        ? left(GeneralFailure.notFound(notFoundValue: ''))
        : right(items);
  }

  void clearAll<T>() {
    prefs.getKeys().forEach((key) {
      if (keyGenerator.hasMatch<T>(key)) {
        prefs.remove(key);
      }
    });
  }

  void clear() {
    prefs.clear();
  }
}
