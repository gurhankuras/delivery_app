// import 'package:dartz/dartz.dart';
// import 'package:delivery_app/application/auth/config.dart';

// import 'package:delivery_app/domain/auth/auth_failure.dart';
// import 'package:delivery_app/domain/auth/credentials.dart';
// import 'package:delivery_app/domain/auth/i_auth_service.dart';
// import 'package:delivery_app/domain/auth/user_tokens.dart';
// import 'package:delivery_app/domain/core/failures.dart';
// import 'package:delivery_app/infastructure/services/cache_manager.dart';
// import 'package:delivery_app/presentation/core/logger.dart';

// class FakeAuthService implements IAuthService {
//   CacheService cacheService;

//   FakeAuthService({
//     required this.cacheService,
//   });

//   static const fakeEmail = 'gurhankuras@hotmail.com';
//   static const fakePassword = '123456789';
//   @override
//   Future<Either<AuthFailure, Unit>> signIn({
//     required Credentials credentials,
//   }) async {
//     await Future.delayed(Duration(seconds: 2));
//     if (credentials.email == fakeEmail &&
//         credentials.password == fakePassword) {
//       final tokens =
//           UserTokens(accessToken: '123456789', refreshToken: '987654321');
//       log.i(tokens);
//       // ignore: unawaited_futures
//       cacheService.setString(TokenKeys.ACCESS_TOKEN_KEY, tokens.accessToken);
//       // ignore: unawaited_futures
//       cacheService.setString(TokenKeys.REFRESH_TOKEN_KEY, tokens.refreshToken);
//       return Future.value(right(unit));
//     }
//     return Future.value(
//       left(AuthFailure.serverError()),
//     );
//   }

//   @override
//   Future<Either<AuthFailure, Unit>> signUp({
//     required Credentials credentials,
//   }) {
//     return Future.value(
//       right(unit),
//     );
//   }

//   @override
//   Future<Either<AuthFailure, Unit>> refreshAccessToken() {
//     // TODO: implement refreshAccessToken
//     throw UnimplementedError();
//   }
// }
