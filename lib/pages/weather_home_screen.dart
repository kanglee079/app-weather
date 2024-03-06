import 'package:flutter/material.dart';

import '../widgets/app_bar_custom_widget.dart';
import '../widgets/infor_default_weather_widget.dart';
import '../widgets/infor_detail_weather_widget.dart';
import '../widgets/infor_forecast_weather_widget.dart';

class WeatherHomeScreen extends StatelessWidget {
  const WeatherHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/bg/bg_light.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: screenHeight * 0.05),
              AppBarCustom(
                location: "10.82, 206.24",
              ),
              const SizedBox(height: 10),
              InforDefaultWeatherWidget(
                city: "Ho Chi Minh City",
                urlImage: "assets/bg/weather1.png",
                weather: "Soft Light",
                temperature: "32°C",
                description: "Duststorm, sandstorm, drifting or blowing snow",
              ),
              const SizedBox(height: 25),
              const InforDetailWeatherWidget(
                humdityValue: "40%",
                pm10Value: "33.4μg/m³",
                uvValue: "2.2",
                windValue: "2km/h",
                sunriseValue: "6:00",
                sunsetValue: "18:00",
              ),
              const SizedBox(height: 25),
              InforForecastWeatherWidget(
                maxtemperature: "36.4°C",
                mintemperature: "22.4°C",
              ),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
