import 'package:iterasi2/Room&Reservation_tab/CarDrivingSimulator.dart';
import 'package:iterasi2/Room&Reservation_tab/Rexroth.dart';
import 'package:iterasi2/Room&Reservation_tab/Rokoko.dart';
import 'package:iterasi2/Room&Reservation_tab/VirtualReality.dart';
import 'package:iterasi2/RoomSchedule_tab/make_a_reservation.dart';
import 'package:iterasi2/RoomSchedule_tab/make_an_equipment.dart';
import 'package:iterasi2/component/maps.dart';
import 'package:iterasi2/component/triangle.dart';
import 'package:iterasi2/template/general_background2.dart';
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
                        width: 300,
                        padding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 0),
                        decoration: BoxDecoration(
                          color: Colors.grey[100],
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
                Container(
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(7),
                        child: Image.asset(
                          'images/ditfront.jpg',
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Row(
                        children: [
                          SizedBox(
                            width: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Digital Industry Laboratory',
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
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
                            'BINUS Syahdan - Ground Floor - Room HD08',
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 12,
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
                            'Max Capacity: 30 People',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
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
                          Column(
                            children: [
                              const SizedBox(
                                width: 15,
                              ),
                              Container(
                                padding: EdgeInsets.all(5),
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(7),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.7),
                                      spreadRadius: 1,
                                      blurRadius: 2,
                                      offset: Offset(0, 0),
                                    ),
                                  ],
                                ),
                                child: Container(
                                  width: 20,
                                  height: 20,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                  ),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const ZoomableImage(
                                                  imagePath: 'images/maps.png'),
                                        ),
                                      );
                                    },
                                    child: const Icon(
                                      Icons.call_split,
                                      color: Colors.blue,
                                      size: 25,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Container(
                                alignment: Alignment.center,
                                width: 70,
                                height: 35,
                                color: Colors.transparent,
                                child: const Text(
                                  'Navigation',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 5,
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
                                              const Text(
                                                'Rules & Regulations',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
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
                                                    Icons.calendar_month,
                                                    color: Colors.orange,
                                                    size: 35,
                                                  ),
                                                  const SizedBox(
                                                    width: 15,
                                                  ),
                                                  Container(
                                                    width: 280,
                                                    height: 50,
                                                    child: const Text(
                                                      'Reservation and reschedule can only be made at least 1 day before event date with a maximum chance of 1 reschedule.',
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w400,
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
                                                    color: Colors.orange,
                                                    size: 35,
                                                  ),
                                                  const SizedBox(
                                                    width: 15,
                                                  ),
                                                  Container(
                                                    width: 280,
                                                    height: 55,
                                                    child: const Text(
                                                      'The borrower is responsible for any damage or removal of facilities within the room and will be penalized according to the laboratory\'s regulations.',
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w400,
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
                                                    Icons.do_disturb_alt,
                                                    color: Colors.orange,
                                                    size: 35,
                                                  ),
                                                  const SizedBox(
                                                    width: 15,
                                                  ),
                                                  Container(
                                                    width: 280,
                                                    height: 35,
                                                    child: const Text(
                                                      'Smoking and the use of weapons are strictly prohibited inside the premises.',
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w400,
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
                                                    Icons.cleaning_services,
                                                    color: Colors.orange,
                                                    size: 35,
                                                  ),
                                                  const SizedBox(
                                                    width: 15,
                                                  ),
                                                  Container(
                                                    width: 280,
                                                    height: 35,
                                                    child: const Text(
                                                      'Every person using the room is obligated to maintain its cleanliness.',
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w400,
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
                            child: Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(5),
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(7),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.7),
                                        spreadRadius: 1,
                                        blurRadius: 2,
                                        offset: Offset(0, 0),
                                      ),
                                    ],
                                  ),
                                  child: const Icon(
                                    Icons.menu_book,
                                    color: Colors.white,
                                    size: 25,
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  color: Colors.transparent,
                                  width: 70,
                                  height: 35,
                                  child: const Text(
                                    'Rules & Regulation',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Column(
                            children: [
                              Container(
                                padding: EdgeInsets.all(2),
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(7),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.7),
                                      spreadRadius: 1,
                                      blurRadius: 2,
                                      offset: Offset(0, 0),
                                    ),
                                  ],
                                ),
                                child: TriangleWithWarningIcon(),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Container(
                                color: Colors.transparent,
                                width: 70,
                                height: 35,
                                child: const Text(
                                  'Disaster Procedures',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          showModalBottomSheet(
                            context: context,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(15),
                              ),
                            ),
                            builder: (BuildContext context) {
                              return SizedBox(
                                height: 230,
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
                                                  'Make an Equipment Reservation',
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
                                                  'Make your equipment reservation for this room',
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
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orangeAccent,
                          minimumSize: const Size(310, 35),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7.0),
                          ),
                        ),
                        child: const Text(
                          'Make a Reservation',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
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
                            'Facilities',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 285,
                        width: 1000,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.transparent,
                        ),
                        child: ListView(
                          padding: const EdgeInsets.all(5),
                          scrollDirection: Axis.horizontal,
                          children: [
                            const SizedBox(
                              width: 15,
                            ),
                            Container(
                              width: 250,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(10),
                                ),
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
                                  ClipRRect(
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                    ),
                                    child: Align(
                                      child: Image.asset(
                                        'images/dit_rexroth.jpg',
                                        width: 250,
                                        height: 120,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Row(
                                    children: [
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'Rexroth XITE Automax 520',
                                        style: TextStyle(
                                          fontSize: 14,
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
                                        width: 10,
                                      ),
                                      Container(
                                        width: 230,
                                        color: Colors.transparent,
                                        child: const Text(
                                          'XITE Automax 250 is a machine that represents a miniaturized smart factory within Industry 4.0. This machine is used for various production activities...',
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Rexroth(),
                                        ),
                                      );
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.orangeAccent,
                                      minimumSize: const Size(200, 30),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(7.0),
                                      ),
                                    ),
                                    child: const Text(
                                      'Details & SOP',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Container(
                              width: 250,
                              height: 100,
                              // color: Colors.blue,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(10),
                                ),
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
                                  ClipRRect(
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                    ),
                                    child: Align(
                                      child: Image.asset(
                                        'images/dit_cardriving.jpg',
                                        width: 250,
                                        height: 120,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Row(
                                    children: [
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'Car Driving Simulator',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: [
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        width: 230,
                                        child: const Text(
                                          'A driving simulator is a tool used to provide users with a direct driving experience within virtual environments...',
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 22),
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              CarDrivingSimulator(),
                                        ),
                                      );
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.orangeAccent,
                                      minimumSize: const Size(200, 30),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(7.0),
                                      ),
                                    ),
                                    child: const Text(
                                      'Details & SOP',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 250,
                              height: 100,
                              // color: Colors.blue,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
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
                                  ClipRRect(
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                    ),
                                    child: Align(
                                      child: Image.asset(
                                        'images/dit_rokoko.jpg',
                                        width: 250,
                                        height: 120,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Row(
                                    children: [
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'Rokoko Suit',
                                        style: TextStyle(
                                          fontSize: 14,
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
                                        width: 10,
                                      ),
                                      Container(
                                        width: 230,
                                        child: const Text(
                                          'The Rokoko suit is a jumpsuit used to capture and record the movements of its wearer. This suit is also used for manipulating mocap animation...',
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Rokoko(),
                                        ),
                                      );
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.orangeAccent,
                                      minimumSize: const Size(200, 30),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(7.0),
                                      ),
                                    ),
                                    child: const Text(
                                      'Details & SOP',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 250,
                              height: 100,
                              // color: Colors.blue,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
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
                                  ClipRRect(
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                    ),
                                    child: Align(
                                      child: Image.asset(
                                        'images/dit_vr.jpg',
                                        width: 250,
                                        height: 120,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Row(
                                    children: [
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'VR (Virtual Reality) - Oculus Meta Quest',
                                        style: TextStyle(
                                          fontSize: 14,
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
                                        width: 10,
                                      ),
                                      Container(
                                        width: 230,
                                        child: const Text(
                                          'Oculus Meta Quest is a virtual reality headset that offers interactive experiences in 3D spaces, transcending the limits of the physical world...',
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              VirtualReality(),
                                        ),
                                      );
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.orangeAccent,
                                      minimumSize: const Size(200, 30),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(7.0),
                                      ),
                                    ),
                                    child: const Text(
                                      'Details & SOP',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                          ],
                        ),
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
                            'Equipment',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 235,
                        width: 1000,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.transparent,
                        ),
                        child: ListView(
                          padding: EdgeInsets.all(5),
                          scrollDirection: Axis.horizontal,
                          children: [
                            const SizedBox(
                              width: 15,
                            ),
                            Container(
                              width: 250,
                              height: 100,
                              // color: Colors.blue,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(10),
                                ),
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
                                  ClipRRect(
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                    ),
                                    child: Align(
                                      child: Image.asset(
                                        'images/whiteboard2.png',
                                        width: 300,
                                        height: 120,
                                        fit: BoxFit.scaleDown,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Row(
                                    children: [
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'Whiteboard',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Row(
                                    children: [
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        '1 pcs of whiteboard',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Container(
                              width: 250,
                              height: 100,
                              // color: Colors.blue,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
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
                                  ClipRRect(
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                    ),
                                    child: Align(
                                      child: Image.asset(
                                        'images/monitor.png',
                                        width: 250,
                                        height: 120,
                                        fit: BoxFit.fitHeight,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Row(
                                    children: [
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'Monitors',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Row(
                                    children: [
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        '2 sets of monitors',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Container(
                              width: 250,
                              height: 100,
                              // color: Colors.blue,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
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
                                  ClipRRect(
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                    ),
                                    child: Align(
                                      child: Image.asset(
                                        'images/computer.png',
                                        width: 250,
                                        height: 120,
                                        fit: BoxFit.fitHeight,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Row(
                                    children: [
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'Personal Computer',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Row(
                                    children: [
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        '1 set of personal computer',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 15,
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
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
