part of 'order_form_package_bloc.dart';

@freezed
class OrderFormPackageState with _$OrderFormPackageState {
  const factory OrderFormPackageState({
    required PackageInfo package,
  }) = _OrderFormPackageState;

  factory OrderFormPackageState.initial() => OrderFormPackageState(
        package: PackageInfo.empty(),
      );
}
