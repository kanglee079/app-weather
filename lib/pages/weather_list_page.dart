import 'package:flutter/material.dart';

import '../models/weather_city.dart';
import '../widgets/infor_weather_city_widget.dart';

class WeatherListPage extends StatelessWidget {
  const WeatherListPage({super.key});
  @override
  Widget build(BuildContext context) {
    List<WeatherCity> mockWeatherCities = [
      WeatherCity(
        cityName: "Ho Chi Minh City",
        time: "6:00 AM",
        weather: "Sunny",
        temperature: "30°C",
        isSunny: true,
        isLight: true,
      ),
      WeatherCity(
        cityName: "Hanoi",
        time: "7:00 AM",
        weather: "Cloudy",
        temperature: "24°C",
        isSunny: false,
        isLight: true,
      ),
      WeatherCity(
        cityName: "Da Nang",
        time: "5:00 PM",
        weather: "Rainy",
        temperature: "25°C",
        isSunny: false,
        isLight: false,
      ),
      WeatherCity(
        cityName: "Can Tho",
        time: "8:00 AM",
        weather: "Sunny",
        temperature: "31°C",
        isSunny: true,
        isLight: true,
      ),
      WeatherCity(
        cityName: "Hue",
        time: "9:00 PM",
        weather: "Clear",
        temperature: "22°C",
        isSunny: false,
        isLight: false,
      ),
      WeatherCity(
        cityName: "Nha Trang",
        time: "4:00 PM",
        weather: "Windy",
        temperature: "29°C",
        isSunny: false,
        isLight: true,
      ),
      WeatherCity(
        cityName: "Phu Quoc",
        time: "11:00 AM",
        weather: "Stormy",
        temperature: "28°C",
        isSunny: false,
        isLight: true,
      ),
      WeatherCity(
        cityName: "Ha Long Bay",
        time: "1:00 PM",
        weather: "Foggy",
        temperature: "23°C",
        isSunny: false,
        isLight: true,
      ),
      WeatherCity(
        cityName: "Sapa",
        time: "6:00 PM",
        weather: "Cold",
        temperature: "15°C",
        isSunny: false,
        isLight: false,
      ),
      WeatherCity(
        cityName: "Vung Tau",
        time: "10:00 AM",
        weather: "Hot",
        temperature: "32°C",
        isSunny: true,
        isLight: true,
      ),
    ];

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: ListView.separated(
          separatorBuilder: (context, index) {
            return const SizedBox(height: 15);
          },
          itemCount: mockWeatherCities.length,
          itemBuilder: (context, index) {
            WeatherCity weatherCity = mockWeatherCities[index];
            return InforWeatherCityWidget(
              cityName: weatherCity.cityName,
              time: weatherCity.time,
              weather: weatherCity.weather,
              temperature: weatherCity.temperature,
              isSunny: weatherCity.isSunny,
              isLight: weatherCity.isLight,
            );
          },
        ),
      ),
    );
  }
}
