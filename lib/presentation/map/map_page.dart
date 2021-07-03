import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../application/map/bloc/map_bloc.dart';
import '../../injection.dart';
import '../core/logger.dart';

class MapPage extends StatefulWidget {
  MapPage({Key? key}) : super(key: key);

  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  late GoogleMapController _googleMapController;
  LatLng? latlng;

  static final _initialCameraPosition = CameraPosition(
    target: LatLng(37.773972, -122.431297),
    zoom: 15,
  );
  @override
  void dispose() {
    super.dispose();
    _googleMapController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<MapBloc>(),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: Text(
            'Google Maps',
            style: Theme.of(context).textTheme.headline6,
          ),
          actions: [
            if (latlng != null)
              BlocBuilder<MapBloc, MapState>(
                // TODO
                // buildWhen: (previous, current) => previous.maybeMap(orElse: () {}),
                builder: (context, state) {
                  return state.maybeMap(
                    hasSelectedLocation: (value) => IconButton(
                      onPressed: () {
                        // TODO
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(
                        Icons.check,
                        size: 35,
                        color: Colors.green,
                      ),
                    ),
                    orElse: () {
                      return Container();
                    },
                  );
                },
              )
          ],
        ),
        body: BlocBuilder<MapBloc, MapState>(
          builder: (context, state) {
            return GoogleMap(
              myLocationEnabled: true,
              zoomControlsEnabled: false,
              onMapCreated: (controller) => _googleMapController = controller,
              initialCameraPosition: _initialCameraPosition,
              markers: state
                  .maybeMap(
                    hasSelectedLocation: (state) => state.locations,
                    success: (state) => state.locations,
                    orElse: () => <LatLng>[],
                  )
                  .map(
                    (location) => Marker(
                      markerId: MarkerId(location.toString()),
                      icon: BitmapDescriptor.defaultMarkerWithHue(25),
                      position: location,
                      onTap: () => context.read<MapBloc>().add(
                            MapEvent.locationSelected(location),
                          ), //  setState(() {
                      infoWindow: InfoWindow(
                        title: 'Hello',
                      ),
                    ),
                  )
                  .toSet(),
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            log.i(_googleMapController);
            _googleMapController.animateCamera(
              CameraUpdate.newCameraPosition(
                CameraPosition(
                  target: latlng ?? _initialCameraPosition.target,
                  zoom: 15,
                ),
              ),
            );
          },
          child: const Icon(
            Icons.center_focus_strong,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
