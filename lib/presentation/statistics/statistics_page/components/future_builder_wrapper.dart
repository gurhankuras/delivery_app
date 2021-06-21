import 'package:flutter/material.dart';

class FutureBuilderWrapper<T> extends StatelessWidget {
  final Future<T>? future;
  final Widget Function(BuildContext context, AsyncSnapshot<T> snapshot)
      onWaiting;
  final Widget Function(BuildContext context, AsyncSnapshot<T> snapshot) onData;
  final Widget Function(BuildContext context, AsyncSnapshot<T> snapshot)
      onError;
  final Widget Function(BuildContext context, AsyncSnapshot<T> snapshot)
      onFallback;

  const FutureBuilderWrapper({
    Key? key,
    required this.future,
    required this.onWaiting,
    required this.onData,
    required this.onError,
    required this.onFallback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<T>(
      future: future,
      builder: (context, AsyncSnapshot<T> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return onWaiting(context, snapshot);
        } else if (snapshot.hasData) {
          return onData(context, snapshot);
        } else if (snapshot.hasError) {
          return onError(context, snapshot);
        }
        return onFallback(context, snapshot);
      },
    );
  }
}
