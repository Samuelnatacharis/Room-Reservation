import 'package:flutter/material.dart';
import 'package:iterasi2/template/general_background2.dart';

class VirtualReality extends StatefulWidget {
  const VirtualReality({super.key});

  @override
  State<VirtualReality> createState() => _VirtualRealityState();
}

class _VirtualRealityState extends State<VirtualReality> {
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
                        'VR (Virtual Reality) - Oculus Meta Quest',
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
                        'images/dit_vr.jpg',
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
                            'Oculus Meta Quest VR',
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
                              'Oculus Meta Quest is a virtual reality headset that offers interactive experiences in 3D spaces, transcending the limits of the physical world. It enables you to engage in activities you love in innovative ways, whether it\'s gaming, entertainment, fitness and wellness, travel, design, or virtually hanging out and playing with friends.',
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
                              'Install VR device (connect to the frame, battery, console, and ensure sufficient battery power) ',
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
                              '2. ',
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
                              'Wear VR glasses and hold the console being used ',
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
                          Container(
                            height: 20,
                            child: Text(
                              '3. ',
                              style: TextStyle(
                                color: Colors.yellow[800],
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            height: 20,
                            width: 300,
                            child: Text(
                              'Perform calibration ',
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
                          Container(
                            height: 20,
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
                            height: 20,
                            child: Text(
                              'Be aware of safety limitations.',
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
                              // style: TextStyle(
                              //   color: Colors.yellow[800],
                              //   fontWeight: FontWeight.bold,
                              // ),
                            ),
                          ),
                          Container(
                            width: 300,
                            height: 20,
                            child: Text(
                              'Choose the software or application you want to use.',
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
                              '6. ',
                              // style: TextStyle(
                              //   color: Colors.yellow[800],
                              //   fontWeight: FontWeight.bold,
                              // ),
                            ),
                          ),
                          Container(
                            width: 300,
                            height: 20,
                            child: Text(
                              'Start using VR.',
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
                              '7. ',
                              // style: TextStyle(
                              //   color: Colors.yellow[800],
                              //   fontWeight: FontWeight.bold,
                              // ),
                            ),
                          ),
                          Container(
                            width: 300,
                            height: 20,
                            child: Text(
                              'Experience using VR.',
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
                              '8. ',
                              // style: TextStyle(
                              //   color: Colors.yellow[800],
                              //   fontWeight: FontWeight.bold,
                              // ),
                            ),
                          ),
                          Container(
                            width: 300,
                            height: 20,
                            child: Text(
                              'Close the program on VR and return to it’s case.',
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
