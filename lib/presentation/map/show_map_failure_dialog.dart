import 'package:app_settings/app_settings.dart';
import 'package:dartz/dartz.dart';
import 'package:delivery_app/domain/core/location_failures.dart';
import 'package:flutter/material.dart';

Future<void> showMapFailureDialog(BuildContext context,
    {required List<Option<LocationFailure>> failures}) async {
  final message = findFirstFailure(failures)
      .fold(() => 'Failure falan yok', (a) => a.message);
  return await showDialog(
      context: context,
      builder: (context) => AlertDialog(
            title: const Text('Something happened!'),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text(message),
                ],
              ),
            ),
            actions: <Widget>[
              TextButton(
                onPressed: AppSettings.openLocationSettings,
                child: const Text('Go to Location Settings'),
              ),
            ],
          ));
}

Option<LocationFailure> findFirstFailure(
    List<Option<LocationFailure>> failures) {
  return _findFirstFailure(failures, 0);
}

Option<LocationFailure> _findFirstFailure(
    List<Option<LocationFailure>> failures, int n) {
  if (failures.length == n) {
    return none();
  }
  if (failures[n].isSome()) {
    return failures[n];
  }
  return _findFirstFailure(failures, n + 1);
}
