import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import '../../../../application/order/order_assembler.dart';
import '../../../../application/order/order_form/order_form_data.dart';
import '../../../../application/order/order_form/order_form_package_bloc/order_form_package_bloc.dart';
import '../../../../application/order/order_form/order_form_person_bloc/order_form_person_bloc.dart';
import '../../../../application/order/order_form/order_form_sender_bloc/order_form_sender_bloc.dart';
import '../../../../injection.dart';
import '../../../core/logger_mixin.dart';
import '../../../core/size_config.dart';
import '../../../core/widgets/app_button.dart';
import '../../../langs/locale_keys.dart';
import '../send_package_confirmation_page/send_package_confirmation_page.dart';
import 'components/package_form_section.dart';
import 'components/person_form_section.dart';

class SendPackageFormPage extends StatelessWidget
    with LoggerMixin<SendPackageFormPage> {
  @override
  Widget build(BuildContext context) {
    logger.d('SEND_PACKAGE_FORM_PAGE');
    return Scaffold(
      appBar: buildAppbar(context),
      body: BlocBuilder<OrderFormSenderBloc, OrderFormSenderState>(
        buildWhen: (previous, current) =>
            previous.showErrorMessages != current.showErrorMessages,
        builder: (context, state) {
          logger.d('SEND_PACKAGE_FORM_PAGE - FORM BUILDER');
          return Form(
            autovalidateMode: state.showErrorMessages
                ? AutovalidateMode.always
                : AutovalidateMode.disabled,
            child: Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: SizeConfig.defaultSize * 2),
              child: SingleChildScrollView(
                child: buildBody(context),
              ),
            ),
          );
        },
      ),
    );
  }

  AppBar buildAppbar(BuildContext context) {
    return AppBar(
      title: Text(
        LocaleKeys.send_package.tr(),
        style: Theme.of(context).textTheme.headline6,
      ),
    );
  }

  Widget buildBody(BuildContext context) {
    return Column(
      children: [
        PersonFormSection<Sender>(
            title: LocaleKeys.form_info_title.tr(args: [
          LocaleKeys.sender.tr(),
        ])),
        PersonFormSection<Receiver>(
            title: LocaleKeys.form_info_title.tr(args: [
          LocaleKeys.receiver.tr(),
        ])),
        PackageFormSection(),
        AppButton(
          text: LocaleKeys.continue_text.tr(),
          click: () => continueHandler(context),
        ),
        SizedBox(height: SizeConfig.defaultSize),
      ],
    );
  }

// TODO: bu iki fonksiyonu order_form_sender_bloc'a kaydir
  void continueHandler(BuildContext context) {
    context.read<OrderFormSenderBloc>().add(OrderFormSenderEvent.saved());
    context.read<OrderFormPersonBloc<Sender>>().state.overallFailure.fold(
          () => context
              .read<OrderFormPersonBloc<Receiver>>()
              .state
              .overallFailure
              .fold(
                () => setOrder(context),
                (a) => null,
              ),
          (a) => null,
        );
    // context
    //     .read<OrderFormPersonBloc<Sender>>()
    //     .state
    //     .overallFailure
    //     .orElse(() =>
    //         context.read<OrderFormPersonBloc<Receiver>>().state.overallFailure)
    //     .fold(
    //       () => setOrder(context),
    //       (a) => null,
    //     );
  }

  void setOrder(BuildContext context) {
    final assembler = OrderAssembler();
    final order = assembler.assemble(
      sender: context.read<OrderFormPersonBloc<Sender>>().state.person,
      receiver: context.read<OrderFormPersonBloc<Receiver>>().state.person,
      packageInfo: context.read<OrderFormPackageBloc>().state.package,
    );
    getIt<OrderFormData>().saveOrder(order);
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => SendPackageConfirmationPage(),
      ),
    );
  }
}
