// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class InforForecastWeatherWidget extends StatelessWidget {
  String maxtemperature;
  String mintemperature;
  InforForecastWeatherWidget({
    Key? key,
    required this.maxtemperature,
    required this.mintemperature,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.35),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Icon(
                  Icons.sunny,
                  color: Colors.white.withOpacity(0.5),
                ),
                const SizedBox(width: 8),
                Text(
                  "FORECAST",
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.5),
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Max: $maxtemperature",
                  style: const TextStyle(fontSize: 20, color: Colors.white),
                ),
                Text(
                  "Min: $mintemperature",
                  style: const TextStyle(fontSize: 20, color: Colors.white),
                ),
              ],
            ),
            const SizedBox(height: 15),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  for (int hour = 0; hour < 24; hour++)
                    HourItem(
                      hour: "$hour AM",
                      urlImage: "assets/bg/weather2.png",
                      temperature: "32°C",
                    ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class HourItem extends StatelessWidget {
  String hour;
  String urlImage;
  String temperature;
  HourItem({
    Key? key,
    required this.hour,
    required this.urlImage,
    required this.temperature,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 34),
      child: Column(
        children: [
          Text(
            hour,
            style: const TextStyle(
                fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Image.asset(
            urlImage,
            fit: BoxFit.cover,
            width: 50,
            height: 50,
          ),
          const SizedBox(height: 10),
          Text(
            temperature,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
