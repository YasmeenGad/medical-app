import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class MapViewModel extends ChangeNotifier {
  GoogleMapController? _mapController;
  LatLng? _currentLocation;

  LatLng? get currentLocation => _currentLocation;

  void setMapController(GoogleMapController controller) {
    _mapController = controller;
  }

  Future<void> fetchCurrentLocation() async {
    final location = Location();
    final permission = await location.requestPermission();
    if (permission == PermissionStatus.granted) {
      final locData = await location.getLocation();
      _currentLocation = LatLng(locData.latitude!, locData.longitude!);
      notifyListeners();
    }
  }

  void goToCurrentLocation() {
    if (_mapController != null && _currentLocation != null) {
      _mapController!.animateCamera(
        CameraUpdate.newLatLng(_currentLocation!),
      );
    }
  }
}
