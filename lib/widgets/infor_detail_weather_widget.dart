import 'package:flutter/material.dart';

class InforDetailWeatherWidget extends StatelessWidget {
  final String humdityValue;
  final String pm10Value;
  final String uvValue;
  final String windValue;
  final String sunriseValue;
  final String sunsetValue;

  const InforDetailWeatherWidget({
    Key? key,
    required this.humdityValue,
    required this.pm10Value,
    required this.uvValue,
    required this.windValue,
    required this.sunriseValue,
    required this.sunsetValue,
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
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildText("Humdity: $humdityValue"),
                  _buildText("PM10: $pm10Value"),
                  _buildText("UV: $uvValue"),
                ],
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  _buildText("Wind: $windValue"),
                  _buildText("Sunrise: $sunriseValue"),
                  _buildText("Sunset: $sunsetValue"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildText(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 20,
        ),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
