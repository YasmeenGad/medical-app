import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart';
import 'package:location/location.dart';

class MapViewModel extends ChangeNotifier {
  LatLng? _currentLatLng;

  LatLng? get currentLatLng => _currentLatLng;

  Future<void> fetchCurrentLocation() async {
    final location = Location();
    final permission = await location.requestPermission();
    if (permission == PermissionStatus.granted) {
      final locData = await location.getLocation();
      _currentLatLng = LatLng(locData.latitude!, locData.longitude!);
      notifyListeners();

      location.onLocationChanged.listen((newLoc) {
        _currentLatLng = LatLng(newLoc.latitude!, newLoc.longitude!);
        notifyListeners();
      });
    }
  }
}
