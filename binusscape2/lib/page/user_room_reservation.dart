import 'package:binusscape2/Room&Reservation_tab/facilities.dart';
import 'package:binusscape2/RoomSchedule_tab/make_a_reservation.dart';
import 'package:binusscape2/RoomSchedule_tab/make_an_equipment.dart';
import 'package:binusscape2/component/maps.dart';
import 'package:binusscape2/template/general_background2.dart';
import 'package:flutter/material.dart';

class UserRoomReservation extends StatefulWidget {
  const UserRoomReservation({super.key});

  @override
  State<UserRoomReservation> createState() => _UserRoomReservation();
}

class _UserRoomReservation extends State<UserRoomReservation> {
  String selectedRoomReservation = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          child: GeneralBackground2(
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                const Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Room & Reservation',
                      style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  width: double
                      .infinity, // Ensure the button takes the full width available
                  child: Center(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        minimumSize: const Size(210, 35),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7.0),
                        ),
                      ),
                      child: Container(
                        width: 315,
                        padding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.circular(7.0), // Adjust as needed
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 10,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Search',
                                    style: TextStyle(color: Colors.grey[500]),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Icon(
                                    Icons.search,
                                    color: Colors.grey[500],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                SizedBox(
                  child: Center(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        // minimumSize: const Size(210, 200),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7.0),
                        ),
                      ),
                      child: GestureDetector(
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
                                height: 310,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      color: Colors.grey[350],
                                      width: 90,
                                      height: 4,
                                    ),
                                    Row(
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const MakeAReservation()),
                                            );
                                          },
                                          child: Column(
                                            children: [
                                              Container(
                                                width: 380,
                                                // height: 50,
                                                decoration: const BoxDecoration(
                                                    // color: Colors.yellow,
                                                    ),
                                                child: Column(
                                                  children: [
                                                    const SizedBox(
                                                      height: 30,
                                                    ),
                                                    const Row(
                                                      children: [
                                                        SizedBox(
                                                          width: 15,
                                                        ),
                                                        Text(
                                                          'Make a Reservation',
                                                          style: TextStyle(
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight.w500,
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
                                                          width: 15,
                                                        ),
                                                        Text(
                                                          'Make your reservation for this room',
                                                          style: TextStyle(
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    const SizedBox(
                                                      height: 30,
                                                    ),
                                                    Container(
                                                      width: 350,
                                                      height: 1,
                                                      color: Colors.grey[300],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const MakeAnEquipmentReservation()),
                                        );
                                      },
                                      child: Container(
                                        width: 380,
                                        // height: 50,
                                        decoration: const BoxDecoration(
                                            // color: Colors.blue,
                                            ),
                                        child: Column(
                                          children: [
                                            const SizedBox(
                                              height: 30,
                                            ),
                                            const Row(
                                              children: [
                                                SizedBox(
                                                  width: 15,
                                                ),
                                                Text(
                                                  'Make an Equipment Reservation',
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w500,
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
                                                  width: 15,
                                                ),
                                                Text(
                                                  'Make your equipment reservation for this room',
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 30,
                                            ),
                                            Container(
                                              width: 350,
                                              height: 1,
                                              color: Colors.grey[300],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const Facilities()),
                                        );
                                      },
                                      child: Container(
                                        width: 380,
                                        // height: 50,
                                        decoration: const BoxDecoration(
                                            // color: Colors.orange,
                                            ),
                                        child: const Column(
                                          children: [
                                            SizedBox(
                                              height: 30,
                                            ),
                                            Row(
                                              children: [
                                                SizedBox(
                                                  width: 15,
                                                ),
                                                Text(
                                                  'Facilities',
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Row(
                                              children: [
                                                SizedBox(
                                                  width: 15,
                                                ),
                                                Text(
                                                  'Facilities and equipment available in this room',
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 30,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          );
                        },
                        child: Container(
                          width: 318,
                          // height: 200,
                          padding: const EdgeInsets.only(top: 5, bottom: 5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.circular(0), // Adjust as needed
                          ),
                          child: Column(
                            children: [
                              Image.asset(
                                'images/ditfront.jpg',
                                fit: BoxFit.fill,
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Row(
                                children: [
                                  const Expanded(
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              'Digital Industry Laboratory',
                                              style: TextStyle(
                                                  fontSize: 17,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 7,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              'BINUS Syahdan - Ground Floor - Room HD08',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 30,
                                    height: 30,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.blue,
                                    ),
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    ZoomableImage(
                                                        imagePath:
                                                            'images/maps.png')));
                                        // showModalBottomSheet(
                                        // context: context,
                                        // isScrollControlled: true,
                                        // isDismissible: true,
                                        // shape: const RoundedRectangleBorder(
                                        //   borderRadius: BorderRadius.vertical(
                                        //       top: Radius.circular(15)),
                                        // ),
                                        // builder: (BuildContext context) {
                                        //   return Container(
                                        //     // height: MediaQuery.of(context).size.height * 0.8,
                                        //     height: 750,
                                        //     width: 380,
                                        //     color: Colors.white,
                                        //     child: PhotoView(
                                        //       imageProvider: AssetImage(
                                        //           'images/maps2.png'),
                                        //       minScale: PhotoViewComputedScale
                                        //           .contained,
                                        //       maxScale: PhotoViewComputedScale
                                        //               .covered *
                                        //           2.0,
                                        //       enableRotation: false,
                                        //     ),
                                        //   );
                                        //_________________________________________________________________
                                        // return SizedBox(
                                        //   child: Column(
                                        //     children: [
                                        //       ListTile(
                                        //         title: Column(
                                        //           children: [
                                        //             Container(
                                        //               color:
                                        //                   Colors.grey[350],
                                        //               width: 90,
                                        //               height: 4,
                                        //             ),
                                        //             const SizedBox(
                                        //               height: 10,
                                        //             ),
                                        //             Text('tes'),
                                        //             Container(
                                        //               // height: MediaQuery.of(context).size.height * 0.8,
                                        //               height: 750,
                                        //               width: 380,
                                        //               color: Colors.white,
                                        //               child: PhotoView(
                                        //                 imageProvider:
                                        //                     AssetImage(
                                        //                         'images/maps2.png'),
                                        //                 minScale:
                                        //                     PhotoViewComputedScale
                                        //                         .contained,
                                        //                 maxScale:
                                        //                     PhotoViewComputedScale
                                        //                             .covered *
                                        //                         2.0,
                                        //                 enableRotation:
                                        //                     false,
                                        //               ),
                                        //             )
                                        //           ],
                                        //         ),
                                        //       ),
                                        //     ],
                                        //   ),
                                        // );
                                        // },
                                        // );
                                      },
                                      child: const Icon(
                                        Icons.call_split,
                                        color: Colors.white,
                                        size: 20,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      showModalBottomSheet(
                                        context: context,
                                        shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.vertical(
                                              top: Radius.circular(15)),
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
                                                      const Text(
                                                        'Rules & Regulations',
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 18,
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                        height: 15,
                                                      ),
                                                      Row(
                                                        children: [
                                                          const SizedBox(
                                                            width: 10,
                                                          ),
                                                          const Icon(
                                                            Icons
                                                                .calendar_month,
                                                            color:
                                                                Colors.orange,
                                                            size: 35,
                                                          ),
                                                          const SizedBox(
                                                            width: 15,
                                                          ),
                                                          Container(
                                                            width: 280,
                                                            height: 45,
                                                            child: const Text(
                                                              'Reservation and reschedule can only be made at least 1 day before event date with a maximum chance of 1 reschedule.',
                                                              style: TextStyle(
                                                                color: Colors
                                                                    .black,
                                                                fontSize: 12,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                              ),
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
                                                            width: 10,
                                                          ),
                                                          const Icon(
                                                            Icons.broken_image,
                                                            color:
                                                                Colors.orange,
                                                            size: 35,
                                                          ),
                                                          const SizedBox(
                                                            width: 15,
                                                          ),
                                                          Container(
                                                            width: 280,
                                                            height: 45,
                                                            child: const Text(
                                                              'The borrower is responsible for any damage or removal of facilities within the room and will be penalized according to the laboratory\'s regulations.',
                                                              style: TextStyle(
                                                                color: Colors
                                                                    .black,
                                                                fontSize: 12,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                              ),
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
                                                            width: 10,
                                                          ),
                                                          const Icon(
                                                            Icons
                                                                .do_disturb_alt,
                                                            color:
                                                                Colors.orange,
                                                            size: 35,
                                                          ),
                                                          const SizedBox(
                                                            width: 15,
                                                          ),
                                                          Container(
                                                            width: 280,
                                                            height: 30,
                                                            child: const Text(
                                                              'Smoking and the use of weapons are strictly prohibited inside the premises.',
                                                              style: TextStyle(
                                                                color: Colors
                                                                    .black,
                                                                fontSize: 12,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                              ),
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
                                                            width: 10,
                                                          ),
                                                          const Icon(
                                                            Icons
                                                                .cleaning_services,
                                                            color:
                                                                Colors.orange,
                                                            size: 35,
                                                          ),
                                                          const SizedBox(
                                                            width: 15,
                                                          ),
                                                          Container(
                                                            width: 280,
                                                            height: 25,
                                                            child: const Text(
                                                              'Every person using the room is obligated to maintain its cleanliness.',
                                                              style: TextStyle(
                                                                color: Colors
                                                                    .black,
                                                                fontSize: 12,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      const SizedBox(
                                                        height: 20,
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
                                    child: Icon(
                                      Icons.warning,
                                      color: Colors.orange[600],
                                      size: 30,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 400,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
