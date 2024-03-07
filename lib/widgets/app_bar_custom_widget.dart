import 'package:flutter/material.dart';

class AppBarCustom extends StatelessWidget {
  String location;
  AppBarCustom({
    super.key,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {},
          highlightColor: Colors.transparent,
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.transparent,
          ),
        ),
        Expanded(
          child: Center(
            child: Text(
              location,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
                color: Colors.white,
              ),
            ),
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
