import 'package:binusscape2/config/animated_page_route.dart';
import 'package:binusscape2/page/user_my_reservation.dart';
import 'package:flutter/material.dart';

class helpTutorial extends StatefulWidget {
  const helpTutorial({super.key});

  @override
  State<helpTutorial> createState() => _helpTutorialState();
}

class _helpTutorialState extends State<helpTutorial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
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
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text(
                      'Tutorial',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    AnimatedPageRoute(
                      page: const UserMyReservation(),
                    ),
                  );
                },
                child: Container(
                  color: Colors.transparent,
                  height: 80,
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                const SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.grey[600],
                                  ),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                const Text(
                                  'How to make a reservation?',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 1,
                color: Colors.grey[350],
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
