import 'package:flutter/material.dart';

class EditingDialog extends StatelessWidget {
  const EditingDialog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        'Are you sure you want to quit?',
        style: Theme.of(context).textTheme.headline6?.copyWith(),
      ),
      actions: <Widget>[
        Row(
          children: [
            Spacer(),
            ElevatedButton(
              style: ButtonStyle(
                shadowColor: MaterialStateProperty.all(Colors.black),
                elevation: MaterialStateProperty.all(5),
              ),
              onPressed: () {
                Navigator.of(context).pop(true);
              },
              child: Text('sign out'),
            ),
            Spacer(),
            ElevatedButton(
              style: ButtonStyle(
                shadowColor: MaterialStateProperty.all(Colors.black),
                elevation: MaterialStateProperty.all(5),
              ),
              onPressed: () => Navigator.of(context).pop(false),
              child: Text('cancel'),
            ),
            Spacer(),
          ],
        ),
      ],
    );
  }
}
