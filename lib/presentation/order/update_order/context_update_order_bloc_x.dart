import '../../../application/order/update_order/bloc/update_order_bloc.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

extension UpdateOrderBlocX on BuildContext {
  UpdateOrderBloc get updateOrderBloc => read<UpdateOrderBloc>();
}
