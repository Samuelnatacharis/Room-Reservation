import 'package:flutter/material.dart';

class MyReservationThisMonth extends StatelessWidget {
  final List<String> userPosts = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 350,
          height: 700,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white),
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              const Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Upcoming',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Event Name 1',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    width: 220,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Edit/Cancel Reservation?',
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              const Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      '2 January 2023',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Image.asset(
                      'images/loc.png',
                      width: 25,
                      height: 25,
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  const Text(
                    'HD08 - SYAHDAN',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
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
                    width: 20,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Image.asset(
                      'images/clock.png',
                      width: 25,
                      height: 25,
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  const Text(
                    '07.20 - 09.00 GMT+7',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
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
                    width: 20,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Image.asset(
                      'images/info.png',
                      width: 25,
                      height: 25,
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  const Text(
                    'DETAILS',
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orangeAccent,
                  minimumSize: const Size(310, 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7.0),
                  ),
                ),
                child: const Text(
                  'Confirm Attendance',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
