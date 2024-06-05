import 'package:flutter/material.dart';
import 'package:iterasi2/template/general_background2.dart';

class Rexroth extends StatefulWidget {
  const Rexroth({super.key});

  @override
  State<Rexroth> createState() => _RexrothState();
}

class _RexrothState extends State<Rexroth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: GeneralBackground2(
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: const Icon(
                        Icons.arrow_back_ios,
                        size: 20,
                        color: Colors.white,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text(
                        'Rexroth XITE Automax 520',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: 385,
                  height: 350,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 2,
                        offset: Offset(2, 2),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        'images/dit_rexroth.jpg',
                        width: 600,
                        height: 180,
                        // fit: BoxFit.fill,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Row(
                        children: [
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            'Rexroth XITE Automax 520',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 15,
                          ),
                          Container(
                            color: Colors.transparent,
                            width: 350,
                            child: const Text(
                              'XITE Automax 250 is a machine that represents a miniaturized smart factory within Industry 4.0. This machine is used for various production activities, including material reception, material selection, inspection, assembly, and the transformation into finished products.',
                              style: TextStyle(
                                fontSize: 13,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Row(
                  children: [
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Standard Operational Procedures',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  width: 385,
                  height: 480,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 15,
                          ),
                          Image.asset(
                            'images/WarningSign.png',
                            width: 25,
                            height: 25,
                            alignment: Alignment.topCenter,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Expanded(
                            child: Text(
                              'This symbol indicates that there are special hazards associated with certain actions. You can press the symbol to find out the precautions.',
                              style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Row(
                        children: [
                          const SizedBox(
                            width: 15,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 45,
                          ),
                          Container(
                            height: 40,
                            color: Colors.transparent,
                            alignment: Alignment.topCenter,
                            child: Text(
                              '1. ',
                            ),
                          ),
                          Container(
                            color: Colors.transparent,
                            height: 40,
                            width: 300,
                            child: const Text(
                              'Release the emergency stop button if still engaged.',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 45,
                          ),
                          Container(
                            child: Text(
                              '2. ',
                            ),
                          ),
                          Container(
                            child: Text(
                                'Close the protective door at the station.'),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 45,
                          ),
                          Text(
                              '3. Remove all work items from the conveyor belt.'),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          showModalBottomSheet(
                            context: context,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(15),
                              ),
                            ),
                            builder: (BuildContext context) {
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
                            },
                          );
                        },
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 10,
                            ),
                            Image.asset(
                              'images/WarningSign.png',
                              width: 25,
                              height: 25,
                              alignment: Alignment.topCenter,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              '4. Fill the box unit from the station magazine.',
                              style: TextStyle(
                                color: Colors.yellow[800],
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline,
                                decorationColor: Colors.yellow[700],
                                decorationThickness: 2,
                              ),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          showModalBottomSheet(
                            context: context,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(15),
                              ),
                            ),
                            builder: (BuildContext context) {
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
                            },
                          );
                        },
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 10,
                            ),
                            Image.asset(
                              'images/WarningSign.png',
                              width: 25,
                              height: 25,
                              alignment: Alignment.topCenter,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              '5. Fill the pin unit from the station magazine.',
                              style: TextStyle(
                                color: Colors.yellow[800],
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline,
                                decorationColor: Colors.yellow[700],
                                decorationThickness: 2,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 45,
                          ),
                          Container(
                            height: 40,
                            child: Text('6. '),
                          ),
                          Container(
                            width: 300,
                            height: 40,
                            child: Text(
                                'Empty the storage warehouse of box unit at station 3.'),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 45,
                          ),
                          Container(
                            height: 40,
                            child: Text('7. '),
                          ),
                          Container(
                            width: 300,
                            height: 40,
                            child: Text(
                                'Connect station 1 to 2 and station 2 to 3, each with compressed air, electricity, signals, and network.'),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 45,
                          ),
                          Container(
                            height: 40,
                            child: Text('8. '),
                          ),
                          Container(
                            width: 300,
                            height: 40,
                            child: Text(
                                'Lock station 1 to 2 and station 2 to 3, both front and back using profile connectors.'),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 45,
                          ),
                          Container(
                            height: 40,
                            child: Text('9. '),
                          ),
                          Container(
                            width: 300,
                            height: 40,
                            child: Text(
                                'Connect mMs 4.0 at station 3 to electricity using a 230 V AC connection cable. All stations now have power.'),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          showModalBottomSheet(
                            context: context,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(15),
                              ),
                            ),
                            builder: (BuildContext context) {
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
                                                  'Hand scratched and caught between stations.',
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
                            },
                          );
                        },
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 10,
                            ),
                            Image.asset(
                              'images/WarningSign.png',
                              width: 25,
                              height: 25,
                              alignment: Alignment.topCenter,
                            ),
                            Container(
                              height: 40,
                              child: Text(
                                '10. ',
                                style: TextStyle(
                                  color: Colors.yellow[800],
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Container(
                              width: 300,
                              height: 40,
                              child: Text(
                                'Turn on the system using the 3 main switches and wait for the system to start.',
                                style: TextStyle(
                                  color: Colors.yellow[800],
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.underline,
                                  decorationColor: Colors.yellow[700],
                                  decorationThickness: 2,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 36,
                          ),
                          Container(
                            height: 60,
                            child: Text('11. '),
                          ),
                          Container(
                            width: 300,
                            height: 60,
                            child: Text(
                                'Press the reset button on the system control panel when 9 LEDs indicating the status of 3 safety relays light up at each station.'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
