import 'package:flutter/material.dart';

class CustomModal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            title: Column(
              children: [
                const SizedBox(
                  height: 5,
                ),
                Container(
                  color: Colors.grey[350],
                  width: 90,
                  height: 4,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  children: [
                    const SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Special Hazards',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 15,
                    ),
                    Image.asset(
                      'images/HandScratchSign.png',
                      width: 70,
                      height: 70,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Container(
                      width: 240,
                      color: Colors.transparent,
                      child: const Text(
                        'Hand scratched on the side of the station magazine.',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Row(
                  children: [
                    const SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Precautions',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 15,
                    ),
                    Image.asset(
                      'images/HandGlovesSign.png',
                      width: 70,
                      height: 70,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Container(
                      width: 240,
                      color: Colors.transparent,
                      child: const Text(
                        'Use gloves',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
