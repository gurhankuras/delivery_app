import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:delivery_app/domain/order/i_order_repository.dart';
import 'package:delivery_app/presentation/core/logger.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../infastructure/services/order_service.dart';
import '../../../../infastructure/services/pdf_service.dart';
import '../../../../presentation/pages/pdf_components/receipt_pdf.dart';
import '../../order_form/order_form_data.dart';

part 'confirm_order_bloc.freezed.dart';
part 'confirm_order_event.dart';
part 'confirm_order_state.dart';

@injectable
class ConfirmOrderBloc extends Bloc<ConfirmOrderEvent, ConfirmOrderState> {
  final IOrderRepository orderRepository;
  final OrderFormData orderFormData;
  final PdfService pdfService;
  ConfirmOrderBloc({
    required this.orderRepository,
    required this.orderFormData,
    required this.pdfService,
  }) : super(ConfirmOrderState.initial()) {
    log.w('ConfirmOrderBloc created');
  }

  @override
  Stream<ConfirmOrderState> mapEventToState(
    ConfirmOrderEvent event,
  ) async* {
    yield* event.map(
      confirmed: (e) async* {
        final order = orderFormData.order;
        yield ConfirmOrderState.loading();
        final idOption = await orderRepository.create(order!);
        yield* idOption.fold(
          (f) async* {
            yield ConfirmOrderState.failure();
          },
          (id) async* {
            orderFormData.saveOrder(order.copyWith(orderId: id));
            yield ConfirmOrderState.success();
          },
        );
      },
      close: (e) async* {
        yield* state.maybeMap(
          failure: (state) async* {
            yield ConfirmOrderState.pageClosed(1);
          },
          success: (state) async* {
            orderFormData.clearOrder();
            yield ConfirmOrderState.pageClosed(3);
          },
          pdfRequested: (state) async* {
            orderFormData.clearOrder();
            yield ConfirmOrderState.pageClosed(3);
          },
          orElse: () async* {
            yield state;
          },
        );
      },
      receiptRequested: (e) async* {
        final pdfFile =
            await pdfService.generate(ReceiptPdfManager(orderFormData.order!));
        yield ConfirmOrderState.pdfRequested(receipt: pdfFile);
      },
    );
  }
}
