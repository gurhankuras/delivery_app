import 'package:injectable/injectable.dart';

import '../../../domain/order/order.dart';

@LazySingleton()
class OrderFormData {
  Order? order;

  void saveOrder(Order order_) {
    order = order_;
  }

  void clearOrder() {
    order = null;
  }
}
