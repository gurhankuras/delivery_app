import 'package:delivery_app/presentation/core/image_paths.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../../../../application/extensions/navigator_extension.dart';
import '../../../../application/order/confirm_order/bloc/confirm_order_bloc.dart';
import '../../../../infastructure/order/order_fake_repository.dart';
import '../../../../infastructure/services/order_service.dart';
import '../../../../infastructure/services/pdf_service.dart';
import '../../../../application/order/order_form/order_form_data.dart';
import '../../../core/constants.dart';
import '../../../core/logger.dart';
import '../../../core/size_config.dart';
import '../../../core/widgets/app_button.dart';
import '../../../core/widgets/sender_receiver_section.dart';
import 'components/order_info_alert.dart';

class SendPackageConfirmationPage extends StatelessWidget {
  const SendPackageConfirmationPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    log.d('SEND_PACKAGE_CONFIRMATION BUILD');
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Confirmation',
          style: sectionTextStyle(context),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: SizeConfig.defaultSize * 2),
        child: Provider(
          create: (context) => PdfService(),
          child: SingleChildScrollView(
            child: BlocProvider(
              create: (context) => ConfirmOrderBloc(
                orderRepository: context.read<OrderService>(),
                pdfService: context.read<PdfService>(),
                orderFormData: context.read<OrderFormData>(),
              ),
              child: BlocListener<ConfirmOrderBloc, ConfirmOrderState>(
                listener: (context, state) {
                  state.maybeMap(
                    pageClosed: (state) {
                      Navigator.of(context).popNTimes(state.times);
                    },
                    success: (state) {
                      OrderInfoAlert(success: true, context: context).show();
                    },
                    failure: (state) {
                      OrderInfoAlert(success: false, context: context).show();
                    },
                    pdfRequested: (state) {
                      context.read<PdfService>().openFile(state.receipt);
                    },
                    orElse: () {},
                  );
                },
                child: buildBody(context),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildBody(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: SizeConfig.defaultSize * 3),
        Text('Delivery Details', style: sectionTextStyle(context)),
        SenderReceiverSection(order: context.read<OrderFormData>().order!),
        Text('Package Details', style: sectionTextStyle(context)),
        buildPackageDetails(context),
        BlocBuilder<ConfirmOrderBloc, ConfirmOrderState>(
          builder: (context, state) {
            return state.maybeMap(
              loading: (e) => Center(
                child: CircularProgressIndicator(),
              ),
              orElse: () => AppButton(
                text: 'Deliver it!',
                click: () => context.read<ConfirmOrderBloc>().add(
                      ConfirmOrderEvent.confirmed(),
                    ),
              ),
            );
          },
        ),
      ],
    );
  }

  Widget buildPackageDetails(BuildContext context) {
    final order = context.read<OrderFormData>().order;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: SizeConfig.defaultSize * 2),
      child: Row(
        children: [
          SvgPicture.asset(
            ImagePaths.package,
            color: Theme.of(context).colorScheme.primary,
            height: SizeConfig.defaultSize * 2.5,
          ),
          Spacer(),
          Expanded(
            flex: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Item Details',
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1
                      ?.copyWith(color: Colors.black.withOpacity(0.6)),
                ),
                SizedBox(height: SizeConfig.defaultSize * 0.5),
                Text.rich(
                  TextSpan(
                    text: order!.packageName,
                    children: [
                      TextSpan(
                        text: '  (<${mockOrder.weight} kg)',
                        style: Theme.of(context).textTheme.subtitle2?.copyWith(
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                    ],
                    style: Theme.of(context).textTheme.subtitle1?.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ),
                SizedBox(height: SizeConfig.defaultSize * 0.5),
                Text(order.packageCategory ?? ' - '),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
