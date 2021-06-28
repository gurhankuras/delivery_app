import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../domain/auth/i_auth_service.dart';
import '../../../infastructure/services/cache_manager.dart';
import '../../../presentation/core/logger.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final CacheService cacheService;
  final IAuthService authService;
  AuthBloc({
    required this.cacheService,
    required this.authService,
  }) : super(AuthState.initial()) {
    log.w('AuthBloc created');
  }

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    yield* event.map(
      gotUserSignedIn: (e) async* {
        yield AuthState.authenticated();
      },
      signedOut: (e) async* {
        await authService.logOut();
        yield AuthState.unauthenticated();
      },
      authCheckRequested: (e) async* {
        final failureOrSuccess = await authService.getUserSignedIn();
        yield* failureOrSuccess.fold(
          (f) async* {
            yield AuthState.unauthenticated();
          },
          (_) async* {
            yield AuthState.authenticated();
          },
        );
      },
    );
  }
}
