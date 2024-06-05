import 'package:flutter/material.dart';
import 'package:iterasi2/template/general_background2.dart';

class Rokoko extends StatefulWidget {
  const Rokoko({super.key});

  @override
  State<Rokoko> createState() => _RokokoState();
}

class _RokokoState extends State<Rokoko> {
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
                        'Rokoko Suit',
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
                        'images/dit_rokoko.jpg',
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
                            'Rokoko Suit',
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
                              'The Rokoko suit is a jumpsuit used to capture and record the movements of its wearer. This suit is also used for manipulating mocap animation data through retargeting, custom character import, and pose correction tools.',
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
                  height: 850,
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
                            width: 25,
                          ),
                          Container(
                            child: const Text(
                              'A. ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            child: const Text(
                              'Wearing the Rokoko Suit',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
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
                          Container(
                            height: 40,
                            color: Colors.transparent,
                            alignment: Alignment.topCenter,
                            child: Text(
                              '1. ',
                              style: TextStyle(
                                color: Colors.yellow[800],
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            color: Colors.transparent,
                            height: 40,
                            width: 300,
                            child: Text(
                              'Put on the pants (bottom) first. Then, wear the shirt (top)',
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
                      Row(
                        children: [
                          const SizedBox(
                            width: 45,
                          ),
                          // Image.asset(
                          //   'images/WarningSign.png',
                          //   width: 25,
                          //   height: 25,
                          //   alignment: Alignment.topCenter,
                          // ),
                          Container(
                            height: 40,
                            child: Text(
                              '2. ',
                              // style: TextStyle(
                              //   color: Colors.yellow[800],
                              //   fontWeight: FontWeight.bold,
                              // ),
                            ),
                          ),
                          Container(
                            width: 300,
                            height: 40,
                            child: Text(
                              'Ensure the thumb is inserted into the provided hole at the wrist part of the suit.',
                              // style: TextStyle(
                              //   color: Colors.yellow[800],
                              //   fontWeight: FontWeight.bold,
                              //   decoration: TextDecoration.underline,
                              //   decorationColor: Colors.yellow[700],
                              //   decorationThickness: 2,
                              // ),
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
                            height: 20,
                            child: Text('3. '),
                          ),
                          Container(
                            height: 20,
                            width: 300,
                            child: Text('Zip up to the top.'),
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
                            child: Text(
                              '4. ',
                              // style: TextStyle(
                              //   color: Colors.yellow[800],
                              //   fontWeight: FontWeight.bold,
                              // ),
                            ),
                          ),
                          Container(
                            width: 300,
                            height: 40,
                            child: Text(
                              'Tighten the straps to secure the sensors in place when the user moves their body.',
                              // style: TextStyle(
                              //   color: Colors.yellow[800],
                              //   fontWeight: FontWeight.bold,
                              //   decoration: TextDecoration.underline,
                              //   decorationColor: Colors.yellow[700],
                              //   decorationThickness: 2,
                              // ),
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
                            height: 20,
                            child: Text(
                              '5. ',
                            ),
                          ),
                          Container(
                            width: 300,
                            height: 20,
                            child: Text(
                              'Wear the headband on the head.',
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
                            width: 25,
                          ),
                          Container(
                            height: 40,
                            child: const Text(
                              'B. ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            width: 300,
                            child: Text(
                              'Connecting Electronic Equipment to the Rokoko Suit',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
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
                          Container(
                            height: 40,
                            color: Colors.transparent,
                            alignment: Alignment.topCenter,
                            child: Text(
                              '1. ',
                              style: TextStyle(
                                color: Colors.yellow[800],
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            color: Colors.transparent,
                            height: 40,
                            width: 300,
                            child: Text(
                              'Connect the suit to the battery (using a power bank).',
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
                      Row(
                        children: [
                          const SizedBox(
                            width: 45,
                          ),
                          // Image.asset(
                          //   'images/WarningSign.png',
                          //   width: 25,
                          //   height: 25,
                          //   alignment: Alignment.topCenter,
                          // ),
                          // const SizedBox(
                          //   width: 10,
                          // ),
                          Container(
                            height: 40,
                            color: Colors.transparent,
                            alignment: Alignment.topCenter,
                            child: Text(
                              '2. ',
                              // style: TextStyle(
                              //   color: Colors.yellow[800],
                              //   fontWeight: FontWeight.bold,
                              // ),
                            ),
                          ),
                          Container(
                            color: Colors.transparent,
                            height: 40,
                            width: 300,
                            child: Text(
                              'When the sensor lights turn blue, turn off the lights and insert the battery into the pocket.',
                              // style: TextStyle(
                              //   color: Colors.yellow[800],
                              //   fontWeight: FontWeight.bold,
                              //   decoration: TextDecoration.underline,
                              //   decorationColor: Colors.yellow[700],
                              //   decorationThickness: 2,
                              // ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 45,
                          ),
                          // Image.asset(
                          //   'images/WarningSign.png',
                          //   width: 25,
                          //   height: 25,
                          //   alignment: Alignment.topCenter,
                          // ),
                          // const SizedBox(
                          //   width: 10,
                          // ),
                          Container(
                            height: 40,
                            color: Colors.transparent,
                            alignment: Alignment.topCenter,
                            child: Text(
                              '3. ',
                              // style: TextStyle(
                              //   color: Colors.yellow[800],
                              //   fontWeight: FontWeight.bold,
                              // ),
                            ),
                          ),
                          Container(
                            color: Colors.transparent,
                            height: 40,
                            width: 300,
                            child: Text(
                              'A green light indicates that the hub is on, and if it changes to a blue light, it means the hub is connected to 2.4 GHz (Wi-Fi router frequency).',
                              // style: TextStyle(
                              //   color: Colors.yellow[800],
                              //   fontWeight: FontWeight.bold,
                              //   decoration: TextDecoration.underline,
                              //   decorationColor: Colors.yellow[700],
                              //   decorationThickness: 2,
                              // ),
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
                            width: 25,
                          ),
                          Container(
                            height: 40,
                            child: const Text(
                              'C. ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            width: 300,
                            child: Text(
                              'Connecting the Rokoko Suit to Rokoko Studio Software',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 45,
                          ),
                          // Image.asset(
                          //   'images/WarningSign.png',
                          //   width: 25,
                          //   height: 25,
                          //   alignment: Alignment.topCenter,
                          // ),
                          // const SizedBox(
                          //   width: 10,
                          // ),
                          Container(
                            height: 40,
                            color: Colors.transparent,
                            alignment: Alignment.topCenter,
                            child: Text(
                              '1. ',
                              // style: TextStyle(
                              //   color: Colors.yellow[800],
                              //   fontWeight: FontWeight.bold,
                              // ),
                            ),
                          ),
                          Container(
                            color: Colors.transparent,
                            height: 40,
                            width: 300,
                            child: Text(
                              'Connect the suit and computer to the same Wi-Fi network.',
                              // style: TextStyle(
                              //   color: Colors.yellow[800],
                              //   fontWeight: FontWeight.bold,
                              //   decoration: TextDecoration.underline,
                              //   decorationColor: Colors.yellow[700],
                              //   decorationThickness: 2,
                              // ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 45,
                          ),
                          // Image.asset(
                          //   'images/WarningSign.png',
                          //   width: 25,
                          //   height: 25,
                          //   alignment: Alignment.topCenter,
                          // ),
                          // const SizedBox(
                          //   width: 10,
                          // ),
                          Container(
                            height: 40,
                            color: Colors.transparent,
                            alignment: Alignment.topCenter,
                            child: Text(
                              '2. ',
                              // style: TextStyle(
                              //   color: Colors.yellow[800],
                              //   fontWeight: FontWeight.bold,
                              // ),
                            ),
                          ),
                          Container(
                            color: Colors.transparent,
                            height: 40,
                            width: 300,
                            child: Text(
                              'When the sensor lights turn blue, turn off the lights and insert the battery into the pocket.',
                              // style: TextStyle(
                              //   color: Colors.yellow[800],
                              //   fontWeight: FontWeight.bold,
                              //   decoration: TextDecoration.underline,
                              //   decorationColor: Colors.yellow[700],
                              //   decorationThickness: 2,
                              // ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 45,
                          ),
                          // Image.asset(
                          //   'images/WarningSign.png',
                          //   width: 25,
                          //   height: 25,
                          //   alignment: Alignment.topCenter,
                          // ),
                          // const SizedBox(
                          //   width: 10,
                          // ),
                          Container(
                            height: 40,
                            color: Colors.transparent,
                            alignment: Alignment.topCenter,
                            child: Text(
                              '3. ',
                              // style: TextStyle(
                              //   color: Colors.yellow[800],
                              //   fontWeight: FontWeight.bold,
                              // ),
                            ),
                          ),
                          Container(
                            color: Colors.transparent,
                            height: 40,
                            width: 300,
                            child: Text(
                              'A green light indicates that the hub is on, and if it changes to a blue light, it means the hub is connected to 2.4 GHz (Wi-Fi router frequency).',
                              // style: TextStyle(
                              //   color: Colors.yellow[800],
                              //   fontWeight: FontWeight.bold,
                              //   decoration: TextDecoration.underline,
                              //   decorationColor: Colors.yellow[700],
                              //   decorationThickness: 2,
                              // ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 45,
                          ),
                          // Image.asset(
                          //   'images/WarningSign.png',
                          //   width: 25,
                          //   height: 25,
                          //   alignment: Alignment.topCenter,
                          // ),
                          // const SizedBox(
                          //   width: 10,
                          // ),
                          Container(
                            height: 40,
                            color: Colors.transparent,
                            alignment: Alignment.topCenter,
                            child: Text(
                              '4. ',
                              // style: TextStyle(
                              //   color: Colors.yellow[800],
                              //   fontWeight: FontWeight.bold,
                              // ),
                            ),
                          ),
                          Container(
                            color: Colors.transparent,
                            height: 40,
                            width: 300,
                            child: Text(
                              'Ensure the Rokoko suit display appears on the computer. Then, click on the Rokoko suit display.',
                              // style: TextStyle(
                              //   color: Colors.yellow[800],
                              //   fontWeight: FontWeight.bold,
                              //   decoration: TextDecoration.underline,
                              //   decorationColor: Colors.yellow[700],
                              //   decorationThickness: 2,
                              // ),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
