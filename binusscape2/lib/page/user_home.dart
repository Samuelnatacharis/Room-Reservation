import 'package:binusscape2/RoomSchedule_tab/make_a_reservation_edit.dart';
import 'package:binusscape2/config/animated_page_route.dart';
import 'package:binusscape2/page/user_my_reservation.dart';
import 'package:binusscape2/user_home_widgets/help.dart';
import 'package:binusscape2/user_home_widgets/notif.dart';
import 'package:binusscape2/settings/settings.dart';
import 'package:binusscape2/template/general_background.dart';
import 'package:flutter/material.dart';

class UserHome extends StatefulWidget {
  const UserHome({super.key});

  @override
  State<UserHome> createState() => _UserHomeState();
}

class _UserHomeState extends State<UserHome> {
  String selectedRole = '';

  bool isExpanded = false;

  String selected_reason = '';
  bool isExpandedReason = false;

  bool isChoosen = false;
  bool isChoosen2 = false;
  bool isChoosen3 = false;
  bool isChoosen4 = false;

  void toggleColorReason() {
    setState(() {
      isChoosen = !isChoosen;
    });
  }

  void toggleColorReason2() {
    setState(() {
      isChoosen2 = !isChoosen2;
    });
  }

  void toggleColorReason3() {
    setState(() {
      isChoosen3 = !isChoosen3;
    });
  }

  void toggleColorReason4() {
    setState(() {
      isChoosen4 = !isChoosen4;
    });
  }

  @override
  Widget build(BuildContext context) {
    DateTime currentTime = DateTime.now();
    int currentHour = currentTime.hour;
    String greeting = '';
    if (currentHour >= 5 && currentHour < 12) {
      greeting = 'Morning';
    } else if (currentHour >= 12 && currentHour < 17) {
      greeting = 'Afternoon';
    } else {
      greeting = 'Evening';
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          child: GeneralBackground(
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
                    Center(
                      child: ElevatedButton(
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
                                height: 150,
                                child: ListView.builder(
                                  itemCount: 2,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    String role_name = index == 0
                                        ? 'Admin'
                                        : 'Employee/Lecturer';

                                    return Column(
                                      children: [
                                        ListTile(
                                          title: Text(
                                            role_name,
                                            style: const TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          subtitle: Text(
                                            role_name == 'Admin'
                                                ? 'BINUS University'
                                                : 'BINUS University',
                                            style: const TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400),
                                          ),
                                          onTap: () {
                                            setState(() {
                                              selectedRole = role_name;
                                            });
                                            Navigator.pop(context);
                                          },
                                        ),
                                        if (index == 0)
                                          Container(
                                            width: 360,
                                            height: 2,
                                            color: Colors.grey[200],
                                          ),
                                      ],
                                    );
                                  },
                                ),
                              );
                            },
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          minimumSize: const Size(210, 35),
                          alignment: Alignment.centerLeft,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                        ),
                        child: Container(
                          width: 200,
                          padding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 0),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 10,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                        selectedRole.isNotEmpty
                                            ? selectedRole
                                            : 'Choose Role...',
                                        style:
                                            TextStyle(color: Colors.grey[500])),
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Icon(
                                      Icons.arrow_drop_down,
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
                    const SizedBox(
                      width: 10,
                    ),
                    //*_______________________________________profile
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          AnimatedPageRoute(page: const settings()),
                        );
                      },
                      child: Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.white,
                            width: 1.5,
                          ),
                          color: Colors.grey[800],
                        ),
                      ),
                    ),
                    //*_______________________________________profile
                    const SizedBox(
                      width: 7,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          AnimatedPageRoute(
                            page: const notif(),
                          ),
                        );
                      },
                      child: const Icon(
                        Icons.notifications,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      width: 7,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          AnimatedPageRoute(
                            page: const help(),
                          ),
                        );
                      },
                      child: const Icon(
                        Icons.help,
                        size: 30,
                        color: Colors.white,
                      ),
                    )
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
                    Text(
                      'Good $greeting,',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
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
                    Text(
                      'User',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                //_________________________________________________________gesturedetector
                Stack(
                  children: [
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 0),
                      width: 350,
                      height: isExpanded ? 600 : 340,
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
                                      height: 300,
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
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
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
                                          borderRadius:
                                              BorderRadius.circular(7.0),
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
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
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                GestureDetector(
                                                  onTap: () {
                                                    showDialog(
                                                      context: context,
                                                      barrierDismissible: true,
                                                      builder: (BuildContext
                                                          context) {
                                                        return AlertDialog(
                                                          insetPadding:
                                                              EdgeInsets.zero,
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        7),
                                                          ),
                                                          contentPadding:
                                                              EdgeInsets.zero,
                                                          content: SizedBox(
                                                            width: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width *
                                                                0.925,
                                                            height: 200,
                                                            child: Column(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              children: [
                                                                Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                          .only(
                                                                          left:
                                                                              30,
                                                                          right:
                                                                              30),
                                                                  child: Column(
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      const Text(
                                                                        'Choose the option below',
                                                                        style:
                                                                            TextStyle(
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                      ),
                                                                      const SizedBox(
                                                                          height:
                                                                              8),
                                                                      RichText(
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        text:
                                                                            const TextSpan(
                                                                          children: [
                                                                            TextSpan(
                                                                              text: "If you want to change the reservation detail, choose",
                                                                              style: TextStyle(
                                                                                fontSize: 12,
                                                                                color: Colors.black,
                                                                              ),
                                                                            ),
                                                                            TextSpan(
                                                                              text: " \"EDIT\"",
                                                                              style: TextStyle(
                                                                                fontWeight: FontWeight.bold,
                                                                                fontSize: 12,
                                                                                color: Colors.black,
                                                                              ),
                                                                            ),
                                                                            TextSpan(
                                                                              text: ". If you want to cancel reservation, choose",
                                                                              style: TextStyle(
                                                                                fontSize: 12,
                                                                                color: Colors.black,
                                                                              ),
                                                                            ),
                                                                            TextSpan(
                                                                              text: " \"CANCEL\"",
                                                                              style: TextStyle(
                                                                                fontWeight: FontWeight.bold,
                                                                                fontSize: 12,
                                                                                color: Colors.black,
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      const SizedBox(
                                                                          height:
                                                                              16),
                                                                      Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          ElevatedButton(
                                                                            onPressed:
                                                                                () {
                                                                              Navigator.push(
                                                                                context,
                                                                                MaterialPageRoute(
                                                                                  builder: (context) => MakeAReservationEdit(),
                                                                                ),
                                                                              );
                                                                            },
                                                                            style:
                                                                                ElevatedButton.styleFrom(
                                                                              backgroundColor: Colors.orangeAccent,
                                                                              minimumSize: const Size(120, 30),
                                                                            ),
                                                                            child:
                                                                                const Text(
                                                                              'EDIT',
                                                                            ),
                                                                          ),
                                                                          ElevatedButton(
                                                                            onPressed:
                                                                                () {
                                                                              showDialog(
                                                                                context: context,
                                                                                barrierDismissible: true,
                                                                                builder: (BuildContext context) {
                                                                                  return AlertDialog(
                                                                                    insetPadding: EdgeInsets.zero,
                                                                                    shape: RoundedRectangleBorder(
                                                                                      borderRadius: BorderRadius.circular(7),
                                                                                    ),
                                                                                    contentPadding: EdgeInsets.zero,
                                                                                    content: SizedBox(
                                                                                      width: MediaQuery.of(context).size.width * 0.925,
                                                                                      height: 340,
                                                                                      child: Column(
                                                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                                                        mainAxisSize: MainAxisSize.min,
                                                                                        children: [
                                                                                          Padding(
                                                                                            padding: const EdgeInsets.only(left: 30, right: 30),
                                                                                            child: Column(
                                                                                              crossAxisAlignment: CrossAxisAlignment.center,
                                                                                              children: [
                                                                                                const Text(
                                                                                                  'Are you sure want to cancel',
                                                                                                  style: TextStyle(
                                                                                                    fontWeight: FontWeight.bold,
                                                                                                  ),
                                                                                                ),
                                                                                                const SizedBox(
                                                                                                  height: 10,
                                                                                                ),
                                                                                                const Row(
                                                                                                  children: [
                                                                                                    Text(
                                                                                                      'Reason',
                                                                                                      style: TextStyle(
                                                                                                        fontWeight: FontWeight.w500,
                                                                                                        fontSize: 14,
                                                                                                      ),
                                                                                                    ),
                                                                                                  ],
                                                                                                ),
                                                                                                const SizedBox(
                                                                                                  height: 10,
                                                                                                ),
                                                                                                GestureDetector(
                                                                                                  onTap: toggleColorReason,
                                                                                                  child: Container(
                                                                                                    width: 290,
                                                                                                    height: 35,
                                                                                                    decoration: BoxDecoration(
                                                                                                      color: isChoosen ? Colors.orange : Colors.white,
                                                                                                      borderRadius: BorderRadius.circular(7),
                                                                                                      border: Border.all(
                                                                                                        color: Colors.grey.shade300,
                                                                                                        width: 1,
                                                                                                      ),
                                                                                                    ),
                                                                                                    child: Center(
                                                                                                      child: Text(
                                                                                                        isChoosen ? 'Event plans have changed' : 'Event plans have changed',
                                                                                                        style: TextStyle(
                                                                                                          fontSize: 13,
                                                                                                          color: isChoosen ? Colors.white : Colors.black,
                                                                                                          fontWeight: FontWeight.w500,
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                                const SizedBox(
                                                                                                  height: 10,
                                                                                                ),
                                                                                                GestureDetector(
                                                                                                  onTap: toggleColorReason2,
                                                                                                  child: Container(
                                                                                                    width: 290,
                                                                                                    height: 35,
                                                                                                    decoration: BoxDecoration(
                                                                                                      color: isChoosen2 ? Colors.orange : Colors.white,
                                                                                                      borderRadius: BorderRadius.circular(7),
                                                                                                      border: Border.all(
                                                                                                        color: Colors.grey.shade300,
                                                                                                        width: 1,
                                                                                                      ),
                                                                                                    ),
                                                                                                    child: Center(
                                                                                                      child: Text(
                                                                                                        isChoosen2 ? 'Not meeting requirements' : 'Not meeting requirements',
                                                                                                        style: TextStyle(
                                                                                                          fontSize: 13,
                                                                                                          color: isChoosen2 ? Colors.white : Colors.black,
                                                                                                          fontWeight: FontWeight.w500,
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                                const SizedBox(
                                                                                                  height: 10,
                                                                                                ),
                                                                                                GestureDetector(
                                                                                                  onTap: toggleColorReason3,
                                                                                                  child: Container(
                                                                                                    width: 290,
                                                                                                    height: 35,
                                                                                                    decoration: BoxDecoration(
                                                                                                      color: isChoosen3 ? Colors.orange : Colors.white,
                                                                                                      borderRadius: BorderRadius.circular(7),
                                                                                                      border: Border.all(
                                                                                                        color: Colors.grey.shade300,
                                                                                                        width: 1,
                                                                                                      ),
                                                                                                    ),
                                                                                                    child: Center(
                                                                                                      child: Text(
                                                                                                        isChoosen3 ? 'Personal reasons' : 'Personal reasons',
                                                                                                        style: TextStyle(
                                                                                                          fontSize: 13,
                                                                                                          color: isChoosen3 ? Colors.white : Colors.black,
                                                                                                          fontWeight: FontWeight.w500,
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                                const SizedBox(
                                                                                                  height: 10,
                                                                                                ),
                                                                                                GestureDetector(
                                                                                                  onTap: toggleColorReason4,
                                                                                                  child: Container(
                                                                                                    width: 290,
                                                                                                    height: 35,
                                                                                                    decoration: BoxDecoration(
                                                                                                      color: isChoosen4 ? Colors.orange : Colors.white,
                                                                                                      borderRadius: BorderRadius.circular(7),
                                                                                                      border: Border.all(
                                                                                                        color: Colors.grey.shade300,
                                                                                                        width: 1,
                                                                                                      ),
                                                                                                    ),
                                                                                                    child: Center(
                                                                                                      child: Text(
                                                                                                        isChoosen4 ? 'Other' : 'Other',
                                                                                                        style: TextStyle(
                                                                                                          fontSize: 13,
                                                                                                          color: isChoosen4 ? Colors.white : Colors.black,
                                                                                                          fontWeight: FontWeight.w500,
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                                const SizedBox(
                                                                                                  height: 15,
                                                                                                ),
                                                                                                Row(
                                                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                  children: [
                                                                                                    ElevatedButton(
                                                                                                      onPressed: (isChoosen || isChoosen2 || isChoosen3 || isChoosen4)
                                                                                                          ? () {
                                                                                                              Navigator.of(context).pop();
                                                                                                            }
                                                                                                          : null,
                                                                                                      style: ButtonStyle(
                                                                                                        minimumSize: MaterialStateProperty.all(const Size(130, 30)),
                                                                                                      ),
                                                                                                      child: const Text('NO'),
                                                                                                    ),
                                                                                                    ElevatedButton(
                                                                                                      onPressed: (isChoosen || isChoosen2 || isChoosen3 || isChoosen4)
                                                                                                          ? () {
                                                                                                              Navigator.of(context).pop();
                                                                                                              Navigator.of(context).pop();
                                                                                                              Navigator.push(
                                                                                                                context,
                                                                                                                MaterialPageRoute(
                                                                                                                  builder: (context) => UserMyReservation(),
                                                                                                                ),
                                                                                                              );
                                                                                                              print('yes');
                                                                                                            }
                                                                                                          : null,
                                                                                                      style: ButtonStyle(
                                                                                                        minimumSize: MaterialStateProperty.all(const Size(130, 30)),
                                                                                                      ),
                                                                                                      child: const Text('YES'),
                                                                                                    ),
                                                                                                  ],
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                  );
                                                                                },
                                                                              );
                                                                            },
                                                                            style:
                                                                                ElevatedButton.styleFrom(
                                                                              backgroundColor: Colors.orangeAccent,
                                                                              minimumSize: const Size(120, 30),
                                                                            ),
                                                                            child:
                                                                                const Text(
                                                                              'CANCEL',
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                    );
                                                  },
                                                  child: const Text(
                                                    'Edit/Cancel Reservation?',
                                                    style: TextStyle(
                                                      color: Colors.red,
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                ),
                                              ],
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
                                        GestureDetector(
                                          onTap: () {
                                            showModalBottomSheet(
                                              context: context,
                                              shape:
                                                  const RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.vertical(
                                                        top: Radius.circular(
                                                            15)),
                                              ),
                                              builder: (BuildContext context) {
                                                return SingleChildScrollView(
                                                  child: SizedBox(
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        ListTile(
                                                          title: Column(
                                                            children: [
                                                              const SizedBox(
                                                                height: 5,
                                                              ),
                                                              Container(
                                                                color: Colors
                                                                    .grey[350],
                                                                width: 90,
                                                                height: 4,
                                                              ),
                                                              const SizedBox(
                                                                height: 20,
                                                              ),
                                                              const Row(
                                                                children: [
                                                                  SizedBox(
                                                                    width: 10,
                                                                  ),
                                                                  Text(
                                                                    'Event Name',
                                                                    style:
                                                                        TextStyle(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              const Row(
                                                                children: [
                                                                  SizedBox(
                                                                    width: 10,
                                                                  ),
                                                                  Text(
                                                                    '26 November 2023',
                                                                    style:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          12,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              Divider(
                                                                color: Colors
                                                                    .grey[300],
                                                                thickness: 1,
                                                              ),
                                                              Row(
                                                                children: [
                                                                  const SizedBox(
                                                                    width: 10,
                                                                  ),
                                                                  Icon(
                                                                    Icons
                                                                        .location_on_outlined,
                                                                    color: Colors
                                                                        .grey
                                                                        .shade600,
                                                                  ),
                                                                  const SizedBox(
                                                                    width: 15,
                                                                  ),
                                                                  const Expanded(
                                                                    child:
                                                                        Column(
                                                                      children: [
                                                                        Row(
                                                                          children: [
                                                                            Text(
                                                                              'Location',
                                                                              style: TextStyle(
                                                                                color: Colors.black,
                                                                                fontSize: 12,
                                                                                fontWeight: FontWeight.bold,
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        Row(
                                                                          children: [
                                                                            Text(
                                                                              'HD08 - SYAHDAN',
                                                                              style: TextStyle(
                                                                                color: Colors.black,
                                                                                fontSize: 12,
                                                                                fontWeight: FontWeight.normal,
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ],
                                                                    ),
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
                                                                  Icon(
                                                                    Icons
                                                                        .access_time,
                                                                    color: Colors
                                                                        .grey
                                                                        .shade600,
                                                                  ),
                                                                  const SizedBox(
                                                                    width: 15,
                                                                  ),
                                                                  const Expanded(
                                                                    child:
                                                                        Column(
                                                                      children: [
                                                                        Row(
                                                                          children: [
                                                                            Text(
                                                                              'Time',
                                                                              style: TextStyle(
                                                                                color: Colors.black,
                                                                                fontSize: 12,
                                                                                fontWeight: FontWeight.bold,
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        Row(
                                                                          children: [
                                                                            Text(
                                                                              '07.20 - 09.00 GMT+7 (Shift 1)',
                                                                              style: TextStyle(
                                                                                color: Colors.black,
                                                                                fontSize: 12,
                                                                                fontWeight: FontWeight.normal,
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ],
                                                                    ),
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
                                                                  Icon(
                                                                      Icons
                                                                          .person,
                                                                      color: Colors
                                                                          .grey
                                                                          .shade600),
                                                                  const SizedBox(
                                                                    width: 17,
                                                                  ),
                                                                  const Expanded(
                                                                    child:
                                                                        Column(
                                                                      children: [
                                                                        Row(
                                                                          children: [
                                                                            Text(
                                                                              'Requester',
                                                                              style: TextStyle(
                                                                                color: Colors.black,
                                                                                fontSize: 12,
                                                                                fontWeight: FontWeight.bold,
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        Row(
                                                                          children: [
                                                                            Text(
                                                                              'Marsya Destiana',
                                                                              style: TextStyle(
                                                                                color: Colors.black,
                                                                                fontSize: 12,
                                                                                fontWeight: FontWeight.normal,
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ],
                                                                    ),
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
                                                                  Icon(
                                                                    Icons.call,
                                                                    color: Colors
                                                                        .grey
                                                                        .shade600,
                                                                  ),
                                                                  const SizedBox(
                                                                    width: 17,
                                                                  ),
                                                                  const Expanded(
                                                                    child:
                                                                        Column(
                                                                      children: [
                                                                        Row(
                                                                          children: [
                                                                            Text(
                                                                              'Contact Person',
                                                                              style: TextStyle(
                                                                                color: Colors.black,
                                                                                fontSize: 12,
                                                                                fontWeight: FontWeight.bold,
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        Row(
                                                                          children: [
                                                                            Text(
                                                                              '087870011182',
                                                                              style: TextStyle(
                                                                                color: Colors.black,
                                                                                fontSize: 12,
                                                                                fontWeight: FontWeight.normal,
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ],
                                                                    ),
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
                                                                  Icon(
                                                                    Icons
                                                                        .groups_2_outlined,
                                                                    color: Colors
                                                                        .grey
                                                                        .shade600,
                                                                  ),
                                                                  const SizedBox(
                                                                    width: 17,
                                                                  ),
                                                                  const Expanded(
                                                                    child:
                                                                        Column(
                                                                      children: [
                                                                        Row(
                                                                          children: [
                                                                            Text(
                                                                              'Department',
                                                                              style: TextStyle(
                                                                                color: Colors.black,
                                                                                fontSize: 12,
                                                                                fontWeight: FontWeight.bold,
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        Row(
                                                                          children: [
                                                                            Text(
                                                                              'Industrial Engineering Department',
                                                                              style: TextStyle(
                                                                                color: Colors.black,
                                                                                fontSize: 12,
                                                                                fontWeight: FontWeight.normal,
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ],
                                                                    ),
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
                                                                  Icon(
                                                                    Icons
                                                                        .calendar_month,
                                                                    color: Colors
                                                                        .grey
                                                                        .shade600,
                                                                  ),
                                                                  const SizedBox(
                                                                    width: 17,
                                                                  ),
                                                                  const Expanded(
                                                                    child:
                                                                        Column(
                                                                      children: [
                                                                        Row(
                                                                          children: [
                                                                            Text(
                                                                              'Agenda',
                                                                              style: TextStyle(
                                                                                color: Colors.black,
                                                                                fontSize: 12,
                                                                                fontWeight: FontWeight.bold,
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        Row(
                                                                          children: [
                                                                            Text(
                                                                              'Meeting - Rapat Tengah Semester',
                                                                              style: TextStyle(
                                                                                color: Colors.black,
                                                                                fontSize: 12,
                                                                                fontWeight: FontWeight.normal,
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ],
                                                                    ),
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
                                                                  Icon(
                                                                      Icons
                                                                          .person_add_alt_outlined,
                                                                      color: Colors
                                                                          .grey
                                                                          .shade600),
                                                                  const SizedBox(
                                                                    width: 17,
                                                                  ),
                                                                  const Expanded(
                                                                    child:
                                                                        Column(
                                                                      children: [
                                                                        Row(
                                                                          children: [
                                                                            Text(
                                                                              'User Amount',
                                                                              style: TextStyle(
                                                                                color: Colors.black,
                                                                                fontSize: 12,
                                                                                fontWeight: FontWeight.bold,
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        Row(
                                                                          children: [
                                                                            Text(
                                                                              '28 People',
                                                                              style: TextStyle(
                                                                                color: Colors.black,
                                                                                fontSize: 12,
                                                                                fontWeight: FontWeight.normal,
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ],
                                                                    ),
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
                                                                  Icon(
                                                                      Icons
                                                                          .inbox_sharp,
                                                                      color: Colors
                                                                          .grey
                                                                          .shade600),
                                                                  const SizedBox(
                                                                    width: 17,
                                                                  ),
                                                                  const Expanded(
                                                                    child:
                                                                        Column(
                                                                      children: [
                                                                        Row(
                                                                          children: [
                                                                            Text(
                                                                              'Equipment Available',
                                                                              style: TextStyle(
                                                                                color: Colors.black,
                                                                                fontSize: 12,
                                                                                fontWeight: FontWeight.bold,
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        Row(
                                                                          children: [
                                                                            Text(
                                                                              'Whiteboard (1), Monitors (2), Personal Computers (1)',
                                                                              style: TextStyle(
                                                                                color: Colors.black,
                                                                                fontSize: 12,
                                                                                fontWeight: FontWeight.normal,
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ],
                                                                    ),
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
                                                                  Icon(
                                                                      Icons
                                                                          .add_box_outlined,
                                                                      color: Colors
                                                                          .grey
                                                                          .shade600),
                                                                  const SizedBox(
                                                                    width: 17,
                                                                  ),
                                                                  const Expanded(
                                                                    child:
                                                                        Column(
                                                                      children: [
                                                                        Row(
                                                                          children: [
                                                                            Text(
                                                                              'Additional Equipment',
                                                                              style: TextStyle(
                                                                                color: Colors.black,
                                                                                fontSize: 12,
                                                                                fontWeight: FontWeight.bold,
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        Row(
                                                                          children: [
                                                                            Text(
                                                                              'Pen (1), Celotape (2)',
                                                                              style: TextStyle(
                                                                                color: Colors.black,
                                                                                fontSize: 12,
                                                                                fontWeight: FontWeight.normal,
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ],
                                                                    ),
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
                                                                  Icon(
                                                                      Icons
                                                                          .note_alt_outlined,
                                                                      color: Colors
                                                                          .grey
                                                                          .shade600),
                                                                  const SizedBox(
                                                                    width: 17,
                                                                  ),
                                                                  const Expanded(
                                                                    child:
                                                                        Column(
                                                                      children: [
                                                                        Row(
                                                                          children: [
                                                                            Text(
                                                                              'Notes',
                                                                              style: TextStyle(
                                                                                color: Colors.black,
                                                                                fontSize: 12,
                                                                                fontWeight: FontWeight.bold,
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        Row(
                                                                          children: [
                                                                            Text(
                                                                              'No additional notes',
                                                                              style: TextStyle(
                                                                                color: Colors.black,
                                                                                fontSize: 12,
                                                                                fontWeight: FontWeight.normal,
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              const SizedBox(
                                                                height: 15,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                );
                                              },
                                            );
                                          },
                                          child: const Text(
                                            'DETAILS',
                                            style: TextStyle(
                                              color: Colors.blueAccent,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                            ),
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
                                          borderRadius:
                                              BorderRadius.circular(7.0),
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
                                size: 30,
                                color: Colors.grey[700],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                //_________________________________________________________gesturedetector
                const SizedBox(
                  height: 231,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
