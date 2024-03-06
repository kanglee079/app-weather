import 'package:flutter/material.dart';

class ScreenAsm13 extends StatelessWidget {
  const ScreenAsm13({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 70),
          Container(
            height: 300,
            margin: const EdgeInsets.all(32),
            padding: const EdgeInsets.all(32),
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: const EdgeInsets.all(32),
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        color: Colors.blue.shade800,
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              color: Colors.purple,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              color: Colors.green,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(32),
            padding: const EdgeInsets.all(32),
            height: 170,
            decoration: const BoxDecoration(
              color: Colors.grey,
            ),
            child: Row(
              children: [
                Container(
                  width: 45,
                  height: double.infinity,
                  color: Colors.black,
                ),
                const SizedBox(width: 25),
                Expanded(
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          color: Colors.green,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Expanded(
                        child: Container(
                          color: Colors.green,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Expanded(
                        child: Container(
                          color: Colors.green,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
