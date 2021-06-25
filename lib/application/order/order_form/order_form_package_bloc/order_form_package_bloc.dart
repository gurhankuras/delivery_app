import 'dart:async';

// import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:delivery_app/application/order/order_assembler.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_form_package_bloc.freezed.dart';
part 'order_form_package_event.dart';
part 'order_form_package_state.dart';

class OrderFormPackageBloc
    extends Bloc<OrderFormPackageEvent, OrderFormPackageState> {
  OrderFormPackageBloc() : super(OrderFormPackageState.initial());

  @override
  Stream<OrderFormPackageState> mapEventToState(
    OrderFormPackageEvent event,
  ) async* {
    yield* event.map(
      initialized: (e) async* {
        yield state;
      },
      packageNameChanged: (e) async* {
        yield state.copyWith(
          package: state.package.copyWith(packageName: e.name),
        );
      },
      categoryChanged: (e) async* {
        yield state.copyWith(
          package: state.package.copyWith(packageCategory: e.category),
        );
      },
      typeChanged: (e) async* {
        yield state.copyWith(
          package: state.package.copyWith(packageType: e.type),
        );
      },
    );
  }
}
