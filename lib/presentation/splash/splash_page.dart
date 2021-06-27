import 'package:delivery_app/application/auth/auth/auth_bloc.dart';
import 'package:delivery_app/presentation/auth/sign_in_page.dart';
import 'package:delivery_app/presentation/core/image_paths.dart';
import 'package:delivery_app/presentation/core/size_config.dart';
import 'package:delivery_app/presentation/home_vm.dart';
import 'package:delivery_app/presentation/pages/main_page/main_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          state.map(
            initial: (state) {
              // context.read<AuthBloc>().;
            },
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
                    ImagePaths.fast_delivery,
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
