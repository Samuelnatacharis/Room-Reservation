import 'package:flutter/material.dart';
import 'package:iterasi2/template/general_background2.dart';

class CarDrivingSimulator extends StatefulWidget {
  const CarDrivingSimulator({super.key});

  @override
  State<CarDrivingSimulator> createState() => _CarDrivingSimulatorState();
}

class _CarDrivingSimulatorState extends State<CarDrivingSimulator> {
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
                        'Car Driving Simulator',
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
                        'images/dit_cardriving.jpg',
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
                            'Car Driving Simulator',
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
                              'A driving simulator is a tool used to provide users with a direct driving experience within virtual environments. Using authentic input devices like steering wheels and pedals, the driver interacts with and controls the simulated vehicle in the digital setting.',
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
                  height: 550,
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
                              'Connect the physical devices (steering wheel, pedals, handbrake, and others) through USB.',
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
                            child: Text(
                              '2. ',
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
                              'Turn on the computer. (The steering wheel will rotate automatically during the synchronization process) (Avoid holding the steering wheel when turning on the computer).',
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
                            height: 40,
                            child: Text('3. '),
                          ),
                          Container(
                            height: 40,
                            width: 300,
                            child: Text(
                                'Launch the City Car Driving software on the computer.'),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 45,
                          ),
                          Text(
                            '4. Choose a car and driving environment.',
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
                              '5. ',
                            ),
                          ),
                          Container(
                            width: 300,
                            height: 40,
                            child: Text(
                              'Adjust user preferences (customize difficulty level, game mode, and other options according to preferences).',
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
                            height: 40,
                            child: Text('6. '),
                          ),
                          Container(
                            width: 300,
                            height: 40,
                            child: Text(
                                'Start the simulation (get into the initial position inside the car and be ready to drive).'),
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
                            child: Text(
                              '7. ',
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
                              'Control and navigation (Follow instructions to learn the controls of the steering wheel, pedals, handbrake, and specific buttons used) (There is force feedback, such as increased vibrations when the simulated car travels on uneven roads) (There is force feedback, such as increased vibrations when the simulated car travels on uneven roads) (Be cautious to avoid surprises or shocks).',
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
                            // height: 40,
                            child: Text('8. '),
                          ),
                          Container(
                            // width: 300,
                            // height: 40,
                            child: Text('Driving experience.'),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 45,
                          ),
                          Container(
                            // height: 40,
                            child: Text('9. '),
                          ),
                          Container(
                            // width: 300,
                            // height: 40,
                            child: Text('End the simulation.'),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 45,
                          ),
                          Container(
                            // height: 40,
                            child: Text(
                              '10. ',
                            ),
                          ),
                          Container(
                            // width: 300,
                            // height: 40,
                            child: Text(
                              'Close the City Car Driving software.',
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
                            height: 60,
                            child: Text('11. '),
                          ),
                          Container(
                            width: 300,
                            height: 60,
                            child: Text('Turn off or shut down the computer.'),
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
