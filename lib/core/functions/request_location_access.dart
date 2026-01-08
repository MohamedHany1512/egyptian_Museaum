import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';

Future<void> requestLocationPermission() async {
  bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
  if (!serviceEnabled) {
    await Geolocator.openLocationSettings();
    return;
  }

  PermissionStatus permission = await Permission.location.status;

  if (permission.isDenied) {
    permission = await Permission.location.request();
  }

  if (permission.isPermanentlyDenied) {
    await openAppSettings();
    return;
  }

  if (permission.isGranted) {
    Position position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    );

   
  }
}
