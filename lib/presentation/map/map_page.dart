import 'package:dartz/dartz.dart' hide State;
import 'package:delivery_app/presentation/map/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'package:delivery_app/domain/core/i_location_service.dart';
import 'package:delivery_app/presentation/map/show_map_failure_dialog.dart';
import 'package:provider/provider.dart';

import '../../application/map/bloc/map_bloc.dart';
import '../../injection.dart';
import '../core/logger.dart';

// I had a little trouble with this plugin, i couldn't divide widgets
class MapPage extends StatefulWidget {
  MapPage({Key? key}) : super(key: key);

  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  late GoogleMapController _googleMapController;

  @override
  void dispose() {
    log.i('MapPageState disposed!');
    super.dispose();
    _googleMapController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MapBloc(getIt<ILocationService>())
        ..add(MapEvent.currentLocationRequested()),
      child: Scaffold(
        appBar: appBar(context),
        body: BlocConsumer<MapBloc, MapState>(
          listenWhen: (previous, current) =>
              previous.isLoading != current.isLoading,
          listener: listenFailure,
          buildWhen: (previous, current) =>
              previous.isLoading != current.isLoading,
          builder: (context, state) {
            if (state.isLoading) {
              return Center(child: CircularProgressIndicator());
            } else if (context.read<MapBloc>().hasFailure()) {
              return Text('Cannot reached!');
            }
            return GoogleMap(
              myLocationEnabled: true,
              zoomControlsEnabled: false,
              onMapCreated: (controller) => _onMapCreated(context, controller),
              initialCameraPosition: CameraPosition(
                target: state.currentLocation
                    .getOrElse(() => fallbackMapCoordinates),
                zoom: defaultMapZoom,
              ),
              markers: state.locations
                  .fold(() => <LatLng>[], (locations) => locations)
                  .map((location) => createMarker(context, location))
                  .toSet(),
            );
          },
        ),
        floatingActionButton: BlocBuilder<MapBloc, MapState>(
          buildWhen: (previous, current) =>
              !previous.mapControllerInitialized &&
              current.mapControllerInitialized,
          builder: (context, state) {
            if (canShowFabButton(context)) {
              return FloatingActionButton(
                onPressed: () => animateCameraSelectedLocation(context),
                child:
                    const Icon(Icons.center_focus_strong, color: Colors.white),
              );
            }
            return Container();
          },
        ),
      ),
    );
  }

  AppBar appBar(BuildContext context) {
    return AppBar(
      centerTitle: false,
      title: Text('Google Maps', style: Theme.of(context).textTheme.headline6),
      actions: [
        BlocBuilder<MapBloc, MapState>(
          buildWhen: (previous, current) =>
              previous.selectedLocation != current.selectedLocation,
          builder: (context, state) {
            return state.selectedLocation.fold(
              () => Container(),
              (_) => ConfirmLocationButton(),
            );
          },
        )
      ],
    );
  }

  void listenFailure(BuildContext context, MapState state) {
    final blocState = context.read<MapBloc>().state;
    if (context.read<MapBloc>().hasFailure()) {
      showMapFailureDialog(
        context,
        failures: [
          blocState.locationsFailure,
          blocState.currentLocationFailure
        ],
      );
    }
  }

  void _onMapCreated(BuildContext context, GoogleMapController controller) {
    _googleMapController = controller;
    context.read<MapBloc>().add(MapEvent.controllerInitialized());
  }

  Marker createMarker(BuildContext context, LatLng location) {
    return Marker(
      markerId: MarkerId(location.toString()),
      icon: BitmapDescriptor.defaultMarkerWithHue(25),
      position: location,
      onTap: () =>
          context.read<MapBloc>().add(MapEvent.locationSelected(location)),
      infoWindow: InfoWindow(title: 'Hello'),
    );
  }

  bool canShowFabButton(BuildContext context) =>
      !context.read<MapBloc>().hasFailure() &&
      context.read<MapBloc>().state.mapControllerInitialized;

  void animateCameraSelectedLocation(BuildContext context) {
    _googleMapController.animateCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(
          target: context
              .read<MapBloc>()
              .state
              .selectedLocation
              .getOrElse(() => fallbackMapCoordinates),
          zoom: defaultMapZoom,
        ),
      ),
    );
  }
}

class ConfirmLocationButton extends StatelessWidget {
  const ConfirmLocationButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.of(context).pop();
      },
      icon: const Icon(
        Icons.check,
        size: 35,
        color: Colors.green,
      ),
    );
  }
}
