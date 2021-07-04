import 'package:dartz/dartz.dart';
import 'package:delivery_app/presentation/core/logger.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geolocator_platform_interface/src/models/position.dart';
import 'package:google_maps_flutter_platform_interface/src/types/location.dart';
import 'package:injectable/injectable.dart';

import '../../domain/core/i_location_service.dart';
import '../../domain/core/location_failures.dart';

@LazySingleton(as: ILocationService)
class LocationService implements ILocationService {
  @override
  Future<Either<LocationFailure, Position>> getCurrentPosition() async {
    final failureOrSuccess = await requestPermissions();
    final result = failureOrSuccess.fold(
      (f) async => left<LocationFailure, Position>(f),
      (_) async => right<LocationFailure, Position>(
        await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.medium,
        ),
      ),
    );
    return result;
  }

  @override
  Future<Either<LocationFailure, Unit>> requestPermissions() async {
    bool serviceEnabled;
    LocationPermission permission;
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return left(LocationFailure.locationServicesDisabled());
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return left(LocationFailure.permissionDenied());
      }
    }
    if (permission == LocationPermission.deniedForever) {
      return left(LocationFailure.permissonDeniedForever());
    }

    return right(unit);
  }

  @override
  Future<Either<LocationFailure, List<LatLng>>> getFranchiseLocations() {
    return Future.value(right([
      LatLng(39.048201, 31.265389),
      LatLng(37.048201, 25.265389),
      LatLng(35.3, 29.265389),
      LatLng(34.4, 36.265389),
      LatLng(32.6, 30.265389),
      LatLng(26.9, 27.265389),
    ]));
  }
}
