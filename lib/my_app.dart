import 'package:bt_flutter/pages/weather_home_screen.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: WeatherHomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
