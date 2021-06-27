import '../../../domain/order/order.dart';

class OrderFormData {
  Order? order;

  void saveOrder(Order order_) {
    order = order_;
  }

  void clearOrder() {
    order = null;
  }
}
