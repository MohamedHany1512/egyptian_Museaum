import 'package:egyptain_museaum/app_routers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
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
