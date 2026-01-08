import 'package:device_preview/device_preview.dart';
import 'package:egyptain_museaum/app_routers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    enabled: true,
     tools: [
      ...DevicePreview.defaultTools,],
    builder: (context) => const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/SplashScreen',
      onGenerateRoute: AppRoutes.generateRoute,
    );
  }
}
