part of 'order_form_package_bloc.dart';

@freezed
class OrderFormPackageEvent with _$OrderFormPackageEvent {
  const factory OrderFormPackageEvent.initialized(
    Option<PackageInfo> initialPackageOption,
  ) = _Initialized;
  const factory OrderFormPackageEvent.packageNameChanged(String name) =
      _NameChanged;
  const factory OrderFormPackageEvent.categoryChanged(String category) =
      _CategoryChanged;
  const factory OrderFormPackageEvent.typeChanged(String type) = _TypeChanged;
}
