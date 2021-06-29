import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../../application/auth/auth/auth_bloc.dart';
import '../auth/sign_in_page.dart';
import '../core/assets_constants.dart';
import '../core/logger.dart';
import '../core/size_config.dart';
import '../home_vm.dart';
import '../main_page/main_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    log.v('SPLASH');
    SizeConfig().init(context);

    return Scaffold(
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          state.map(
            initial: (state) {},
            authenticated: (state) {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => ChangeNotifierProvider(
                    create: (context) => HomeVM(),
                    child: MainPage(),
                  ),
                ),
              );
            },
            unauthenticated: (state) {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => SignInPage(),
                ),
              );
            },
          );
        },
        child: Center(
          child: Row(
            children: [
              Spacer(),
              Expanded(
                child: AspectRatio(
                  aspectRatio: 1,
                  child: SvgPicture.asset(
                    Assets.fast_delivery,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
