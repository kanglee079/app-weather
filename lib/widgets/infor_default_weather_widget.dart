// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class InforDefaultWeatherWidget extends StatelessWidget {
  String city;
  String urlImage;
  String weather;
  String temperature;
  String description;
  InforDefaultWeatherWidget({
    Key? key,
    required this.city,
    required this.urlImage,
    required this.weather,
    required this.temperature,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          city,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 25),
        Image.asset(
          urlImage,
          fit: BoxFit.cover,
          width: 120,
          height: 120,
        ),
        const SizedBox(height: 10),
        Text(
          weather,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.normal,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          temperature,
          style: const TextStyle(
            fontSize: 64,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          width: 250,
          child: Text(
            description,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.normal,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
