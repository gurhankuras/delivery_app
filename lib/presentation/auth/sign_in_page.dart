import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import '../../application/auth/auth/auth_bloc.dart';
import '../../application/auth/sign_in_form/sign_in_form_bloc.dart';
import '../../domain/auth/i_auth_service.dart';
import '../../injection.dart';
import '../core/assets_constants.dart';
import '../core/size_config.dart';
import '../core/widgets/app_button.dart';
import '../core/widgets/app_title.dart';
import '../home_vm.dart';
import '../pages/main_page/main_page.dart';
import 'widgets/sign_in_email_form_field.dart';
import 'widgets/sign_in_password_form_field.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(),
        body: BlocProvider(
      create: (context) => SignInFormBloc(
        authService: getIt<IAuthService>(),
        authBloc: context.read<AuthBloc>(),
      ),
      child: Center(
        child: SingleChildScrollView(
          child: BlocBuilder<SignInFormBloc, SignInFormState>(
            buildWhen: (previous, current) =>
                previous.showErrorMessages != current.showErrorMessages,
            builder: (context, state) {
              return Form(
                autovalidateMode: state.showErrorMessages
                    ? AutovalidateMode.always
                    : AutovalidateMode.disabled,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: SizeConfig.defaultSize * 2),
                  child: BlocListener<AuthBloc, AuthState>(
                    listener: (context, state) {
                      state.maybeMap(
                        authenticated: (state) {
                          Navigator.of(context)
                              .pushReplacement(MaterialPageRoute(
                            builder: (context) => ChangeNotifierProvider(
                              create: (context) => HomeVM(),
                              child: MainPage(),
                            ),
                          ));
                        },
                        orElse: () {},
                      );
                    },
                    child: SignInFormBody(),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    ));
  }
}

class SignInFormBody extends StatelessWidget {
  const SignInFormBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppLogoSection(),
        SignInEmailFormField(),
        SignInPasswordFormField(),
        BlocConsumer<SignInFormBloc, SignInFormState>(
          buildWhen: (previous, current) =>
              previous.isSubmitting != current.isSubmitting,
          listenWhen: (previous, current) =>
              previous.failure != current.failure,
          listener: (context, state) {
            state.failure.fold(
              () => null,
              (failure) => FlushbarHelper.createError(
                      message: failure.message, duration: Duration(seconds: 1))
                  .show(context),
            );
          },
          builder: (context, state) {
            return state.isSubmitting
                ? CircularProgressIndicator()
                : ClipRRect(
                    borderRadius:
                        BorderRadius.circular(SizeConfig.defaultSize * 1.5),
                    child: AppButton(
                      text: 'Sign In',
                      click: () => context
                          .read<SignInFormBloc>()
                          .add(SignInFormEvent.signInPressed()),
                    ),
                  );
          },
        ),
      ],
    );
  }
}

class AppLogoSection extends StatelessWidget {
  const AppLogoSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Spacer(),
          Expanded(
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: 1,
                  child: SvgPicture.asset(
                    Assets.fast_delivery,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                AppTitle(fontSize: SizeConfig.defaultSize * 1.9)
              ],
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
