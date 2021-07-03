import 'package:dartz/dartz.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'location_failures.dart';

abstract class ILocationService {
  Future<Either<LocationFailure, Position>> getCurrentPosition();
  Future<Either<LocationFailure, Unit>> requestPermissions();
  Future<Either<LocationFailure, List<LatLng>>> getFranchiseLocations();
}
