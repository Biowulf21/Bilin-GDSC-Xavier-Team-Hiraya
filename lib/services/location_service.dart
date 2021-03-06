import 'package:geolocator/geolocator.dart';

Future<bool> checkPositionPermission() async {
  bool serviceEnabled;
  LocationPermission permission;

  serviceEnabled = await Geolocator.isLocationServiceEnabled();

  if (!serviceEnabled) {
    return Future.error("Location Services are disabled");
  }

  permission = await Geolocator.checkPermission();

  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      return Future.error("Location Services are denied");
    }
  }

  if (permission == LocationPermission.deniedForever) {
    return Future.error(
        "Location Service is Permanently Denied. Please enabled it.");
  }

  return true;
}
