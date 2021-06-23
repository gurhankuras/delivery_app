import '../domain/order/order.dart';

class OrderFormData {
  Order? order;

  void saveOrder(/*Map<String, dynamic> formData*/ Order order_) {
    // order = Order.fromJson(formData);
    order = order_;
  }

  void clearOrder() {
    order = null;
  }
}
