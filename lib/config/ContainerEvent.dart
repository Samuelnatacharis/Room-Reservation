import 'package:flutter/material.dart';
import 'package:iterasi2/component/EditCancelReservation.dart';
import 'package:iterasi2/config/ContainerEventDetails.dart';

class ContainerBox extends StatefulWidget {
  const ContainerBox({Key? key, required this.ContainerBoxEvent})
      : super(key: key);

  final Function(String) ContainerBoxEvent;

  @override
  _ContainerBoxState createState() => _ContainerBoxState();
}

class _ContainerBoxState extends State<ContainerBox> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AnimatedContainer(
          duration: const Duration(milliseconds: 0),
          width: 350,
          height: isExpanded ? 625 : 340,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Stack(
            children: [
              Positioned(
                child: Center(
                  child: Opacity(
                    opacity: isExpanded ? 1.0 : 0.0,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 320,
                        ),
                        Divider(
                          color: Colors.grey[300],
                          thickness: 1,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 20,
                            ),
                            const Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'Event Name 2',
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
                                      fontSize: 12,
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
                                '25 January 2023',
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
                              '17.20 - 19.00 GMT+7',
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
              ),
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Center(
                  child: Opacity(
                    opacity: isExpanded ? 1.0 : 1.0,
                    //!__________________________________________before expanded
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
                        Container(
                          color: Colors.transparent,
                          width: 310,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                color: Colors.transparent,
                                child: const Text(
                                  'Event Name 1',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                decoration: const BoxDecoration(
                                  color: Colors.transparent,
                                ),
                                child: EditCancelReservation(
                                  EditCancelReservationEvent: (a) {
                                    print('edit/cancel clicked');
                                  },
                                ),
                              ),
                            ],
                          ),
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
                            DetailsEventContainer(
                              DetailsEventContainerEvent:
                                  (DetailsEventContainerEvent) {},
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
                    //!__________________________________________before expanded
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          // top: 10,
          left: 0,
          right: 0,
          bottom: 0,
          child: GestureDetector(
            onTap: () {
              setState(() {
                isExpanded = !isExpanded;
              });
            },
            child: Align(
              alignment: Alignment.topCenter,
              child: Icon(
                isExpanded
                    ? Icons.keyboard_arrow_up
                    : Icons.keyboard_arrow_down,
                size: 40,
                color: Colors.grey[700],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
