enum DeliveryStatus {
  ordered,
  on_the_way,
  dispatching,
  delivered,
  completed,
  not_home
}

extension DeliveryStatusExtension on DeliveryStatus {
  String str() {
    switch (this) {
      case DeliveryStatus.ordered:
        return 'Ordered';
      case DeliveryStatus.on_the_way:
        return 'On the Way';
      case DeliveryStatus.dispatching:
        return 'Dispatching';
      case DeliveryStatus.delivered:
        return 'Delivered';
      case DeliveryStatus.completed:
        return 'Completed';
      case DeliveryStatus.not_home:
        return 'Not Home';
    }
  }
}
