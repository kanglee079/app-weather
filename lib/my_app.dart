import 'package:flutter/material.dart';

import 'pages/weather_list_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const WeatherListPage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: const TextTheme(
            // bodyMedium: TextStyle(color: Colors.white),
            ),
      ),
    );
  }
}
