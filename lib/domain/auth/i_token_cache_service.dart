import 'package:dartz/dartz.dart';
import '../core/general_failures.dart';

abstract class ITokenCacheService {
  Future<Either<GeneralFailure, String>> getRefreshToken();
  Future<Either<GeneralFailure, Unit>> setRefreshToken(String token);
  Future<Either<GeneralFailure, String>> getAccessToken();
  Future<Either<GeneralFailure, Unit>> setAccessToken(String token);
  Future<bool> clear();
}
