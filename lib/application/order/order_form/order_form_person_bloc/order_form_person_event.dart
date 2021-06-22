part of 'order_form_person_bloc.dart';

@freezed
class OrderFormPersonEvent with _$OrderFormPersonEvent {
  const factory OrderFormPersonEvent.initialized(
      Option<Order> initialOrderOption) = _Initialized;
  const factory OrderFormPersonEvent.nameChanged(String name) = _NameChanged;
  const factory OrderFormPersonEvent.tcChanged(String tc) = _TcChanged;
  const factory OrderFormPersonEvent.phoneNumberChanged(String phoneNumber) =
      _PhoneNumberChanged;
  const factory OrderFormPersonEvent.addressChanged(String address) =
      _AddressChanged;
  // const factory OrderFormPersonEvent.saved() = _Saved;
}
