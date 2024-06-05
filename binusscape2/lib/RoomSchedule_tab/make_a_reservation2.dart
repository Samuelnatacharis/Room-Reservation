import 'package:binusscape2/home_page.dart';
import 'package:binusscape2/page/user_my_reservation.dart';
import 'package:binusscape2/template/general_background2.dart';
import 'package:flutter/material.dart';

class MakeReservationDetails extends StatefulWidget {
  const MakeReservationDetails({super.key});

  @override
  State<MakeReservationDetails> createState() => _MakeReservationDetailsState();
}

class _MakeReservationDetailsState extends State<MakeReservationDetails> {
  String selectedEventCat = '';
  bool isChecked = false;
  bool isButtonEnabled = false;

  bool isButtonEnabled2 = false;

  int selectedShift = 2;

  bool isOrange = false;
  bool isOrange2 = false;
  bool isOrange3 = false;
  bool isOrange4 = false;
  bool isOrange5 = false;
  bool isOrange6 = false;

  void toggleColor() {
    setState(() {
      isOrange = !isOrange;
    });
  }

  void toggleColor2() {
    setState(() {
      isOrange2 = !isOrange2;
    });
  }

  void toggleColor3() {
    setState(() {
      isOrange3 = !isOrange3;
    });
  }

  void toggleColor4() {
    setState(() {
      isOrange4 = !isOrange4;
    });
  }

  void toggleColor5() {
    setState(() {
      isOrange5 = !isOrange5;
    });
  }

  void toggleColor6() {
    setState(() {
      isOrange6 = !isOrange6;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
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
                          'Make a Reservation',
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
                              const SizedBox(
                                height: 15,
                              ),
                              const Text(
                                'Reservation Detail',
                                style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              const Row(
                                children: [
                                  Text(
                                    'Requester',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Container(
                                width: 320,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.grey.shade400,
                                    width: 1.5,
                                  ),
                                ),
                                child: const Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'BN123644795',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Row(
                                children: [
                                  Text(
                                    'Department/UKM/HMJ',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Container(
                                width: 320,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.grey.shade400,
                                    width: 1.5,
                                  ),
                                ),
                                child: const Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'Industrial Engineering Laboratory',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Row(
                                children: [
                                  Text(
                                    'Contact Person',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Container(
                                padding: const EdgeInsets.only(left: 10),
                                width: 320,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.grey.shade400,
                                    width: 1.5,
                                  ),
                                ),
                                child: const Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      '087873911035',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Row(
                                children: [
                                  Text(
                                    'Event Categories',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Container(
                                padding: const EdgeInsets.only(left: 10),
                                width: 320,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.grey.shade400,
                                    width: 1.5,
                                  ),
                                ),
                                child: const Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Meeting',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Row(
                                children: [
                                  Text(
                                    'Event Name',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Container(
                                padding: const EdgeInsets.only(left: 10),
                                width: 320,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.grey.shade400,
                                    width: 1.5,
                                  ),
                                ),
                                child: const Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Digital Exhibition',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Row(
                                children: [
                                  Text(
                                    'Date',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                padding: const EdgeInsets.only(left: 10),
                                width: 320,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.grey.shade400,
                                    width: 1.5,
                                  ),
                                ),
                                child: const Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      '28 November 2023',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Row(
                                children: [
                                  Text(
                                    'Shift',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Container(
                                padding: const EdgeInsets.only(left: 10),
                                width: 320,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.grey.shade400,
                                    width: 1.5,
                                  ),
                                ),
                                child: const Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Shift 6 (17.20 - 19.00)',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Row(
                                children: [
                                  Text(
                                    'User Amount',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                padding: const EdgeInsets.only(left: 10),
                                width: 320,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.grey.shade400,
                                    width: 1.5,
                                  ),
                                ),
                                child: const Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      '40',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Row(
                                children: [
                                  Text(
                                    'Venue',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                padding: const EdgeInsets.only(left: 10),
                                width: 320,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.grey.shade400,
                                    width: 1.5,
                                  ),
                                ),
                                child: const Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Digital Industry Laboratory - HD08',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Row(
                                children: [
                                  Text(
                                    'Equipment Available in Venue',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Container(
                                padding: const EdgeInsets.only(left: 10),
                                width: 320,
                                // height: 40,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.grey.shade400,
                                    width: 1.5,
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          width: 150,
                                          padding:
                                              const EdgeInsets.only(top: 10),
                                          child: const Text(
                                            'Whiteboard',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          padding:
                                              const EdgeInsets.only(top: 10),
                                          child: const Text(
                                            'x1',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          width: 150,
                                          child: const Text(
                                            'Monitors',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          child: const Text(
                                            'x2',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          width: 150,
                                          child: const Text(
                                            'Personal Computer',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          child: const Text(
                                            'x1',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 12,
                                            ),
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
                              const SizedBox(
                                height: 10,
                              ),
                              const Row(
                                children: [
                                  Text(
                                    'Additional Equipment',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Container(
                                padding: const EdgeInsets.only(left: 10),
                                width: 320,
                                // height: 40,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.grey.shade400,
                                    width: 1.5,
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          width: 150,
                                          padding:
                                              const EdgeInsets.only(top: 10),
                                          child: const Text(
                                            'Whiteboard Marker',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          padding:
                                              const EdgeInsets.only(top: 10),
                                          child: const Text(
                                            'x3',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          width: 150,
                                          child: const Text(
                                            'Scissors',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          child: const Text(
                                            'x2',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 12,
                                            ),
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
                              const SizedBox(
                                height: 10,
                              ),
                              const Row(
                                children: [
                                  Text(
                                    'Notes',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 10),
                                width: 320,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.grey.shade400,
                                    width: 1.5,
                                  ),
                                ),
                                child: TextField(
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.transparent),
                                    ),
                                    // hintText: '',
                                    hintStyle: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  style: const TextStyle(
                                    fontSize: 14,
                                    color: Colors.black,
                                  ),
                                  textInputAction: TextInputAction.done,
                                  onChanged: (value) {},
                                  onSubmitted: (value) {},
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Row(
                                children: [
                                  Text(
                                    'Rules & Regulations',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Container(
                                padding: const EdgeInsets.only(left: 10),
                                width: 320,
                                height: 200,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.grey.shade400,
                                    width: 1.5,
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          '1. ',
                                          style: TextStyle(
                                            color: Colors.red,
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                        Container(
                                          color: Colors.transparent,
                                          width: 280,
                                          child: const Text(
                                            'Reservation and reschedule can only be made at least 1 day before event date with maximum chance of 1 reschedule.',
                                            style: TextStyle(
                                              color: Colors.red,
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          '2. ',
                                          style: TextStyle(
                                            color: Colors.red,
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                        Container(
                                          color: Colors.transparent,
                                          width: 290,
                                          child: const Text(
                                            'The borrower is responsible for any damage or removal of facilities within the room and will be penalized according to the laboratory\'s regulations.',
                                            style: TextStyle(
                                              color: Colors.red,
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          '3. ',
                                          style: TextStyle(
                                            color: Colors.red,
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                        Container(
                                          color: Colors.transparent,
                                          width: 290,
                                          child: const Text(
                                            'Smoking and the use of weapons are strictly prohibited inside the premises.',
                                            style: TextStyle(
                                              color: Colors.red,
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          '4. ',
                                          style: TextStyle(
                                            color: Colors.red,
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                        Container(
                                          color: Colors.transparent,
                                          width: 290,
                                          child: const Text(
                                            'Every person using the room is obligated to maintain its cleanliness.',
                                            style: TextStyle(
                                              color: Colors.red,
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      foregroundColor: Colors.white,
                                      backgroundColor: Colors.orangeAccent,
                                      minimumSize: const Size(120, 30),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(7),
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: const Text('BACK'),
                                  ),
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      foregroundColor: Colors.white,
                                      backgroundColor: Colors.orangeAccent,
                                      minimumSize: const Size(120, 30),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(7),
                                      ),
                                    ),
                                    onPressed: () {
                                      showDialog(
                                        context: context,
                                        barrierDismissible: true,
                                        builder: (BuildContext context) {
                                          return AlertDialog(
                                            insetPadding: EdgeInsets.zero,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(7),
                                            ),
                                            contentPadding: EdgeInsets.zero,
                                            content: SizedBox(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.925,
                                              height: 200,
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 30,
                                                            right: 30,
                                                            top: 30),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        const Text(
                                                          'Are you sure want to submit?',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                        ),
                                                        const SizedBox(
                                                          height: 15,
                                                        ),
                                                        const Text(
                                                          'Reschedule can only be made at least 1 day before event date with a maximum chance of 1 reschedule.',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                          ),
                                                        ),
                                                        const SizedBox(
                                                            height: 30),
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            ElevatedButton(
                                                              onPressed: () {
                                                                Navigator.of(
                                                                        context)
                                                                    .pop();
                                                              },
                                                              style:
                                                                  ElevatedButton
                                                                      .styleFrom(
                                                                backgroundColor:
                                                                    Colors
                                                                        .orangeAccent,
                                                                minimumSize:
                                                                    const Size(
                                                                        120,
                                                                        30),
                                                              ),
                                                              child: const Text(
                                                                'No',
                                                              ),
                                                            ),
                                                            ElevatedButton(
                                                              onPressed: () {
                                                                Navigator.pop(
                                                                    context);
                                                                showDialog(
                                                                  context:
                                                                      context,
                                                                  barrierDismissible:
                                                                      true,
                                                                  builder:
                                                                      (BuildContext
                                                                          context) {
                                                                    return AlertDialog(
                                                                      insetPadding:
                                                                          EdgeInsets
                                                                              .zero,
                                                                      shape:
                                                                          RoundedRectangleBorder(
                                                                        borderRadius:
                                                                            BorderRadius.circular(7),
                                                                      ),
                                                                      contentPadding:
                                                                          EdgeInsets
                                                                              .zero,
                                                                      content:
                                                                          SizedBox(
                                                                        width: MediaQuery.of(context).size.width *
                                                                            0.925,
                                                                        height:
                                                                            200,
                                                                        child:
                                                                            Column(
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
                                                                          mainAxisSize:
                                                                              MainAxisSize.min,
                                                                          children: [
                                                                            Padding(
                                                                              padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
                                                                              child: Column(
                                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                                                children: [
                                                                                  const Text(
                                                                                    'Reservation Successful',
                                                                                    textAlign: TextAlign.center,
                                                                                    style: TextStyle(
                                                                                      fontWeight: FontWeight.bold,
                                                                                    ),
                                                                                  ),
                                                                                  const SizedBox(
                                                                                    height: 15,
                                                                                  ),
                                                                                  const Text(
                                                                                    'The reservation can be viewed in the "My Reservation" menu, would you like to open it?',
                                                                                    textAlign: TextAlign.center,
                                                                                    style: TextStyle(
                                                                                      fontWeight: FontWeight.normal,
                                                                                      fontSize: 12,
                                                                                    ),
                                                                                  ),
                                                                                  const SizedBox(height: 30),
                                                                                  Row(
                                                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                    children: [
                                                                                      ElevatedButton(
                                                                                        onPressed: () {
                                                                                          Navigator.pop(context);
                                                                                          Navigator.pop(context);
                                                                                          Navigator.pop(context);
                                                                                          Navigator.pop(context);
                                                                                          Navigator.pop(context);
                                                                                          Navigator.push(
                                                                                              context,
                                                                                              MaterialPageRoute(
                                                                                                  builder: (context) => const HomePage(
                                                                                                        children: [],
                                                                                                      )));
                                                                                        },
                                                                                        style: ElevatedButton.styleFrom(
                                                                                          backgroundColor: Colors.orangeAccent,
                                                                                          minimumSize: const Size(120, 30),
                                                                                        ),
                                                                                        child: const Text(
                                                                                          'LATER',
                                                                                        ),
                                                                                      ),
                                                                                      ElevatedButton(
                                                                                        onPressed: () {
                                                                                          Navigator.pop(context);
                                                                                          Navigator.pop(context);
                                                                                          Navigator.pop(context);
                                                                                          Navigator.pop(context);
                                                                                          Navigator.pop(context);
                                                                                          Navigator.push(
                                                                                              context,
                                                                                              MaterialPageRoute(
                                                                                                  builder: (context) => const HomePage(
                                                                                                        children: [],
                                                                                                      )));
                                                                                          Navigator.push(
                                                                                            context,
                                                                                            MaterialPageRoute(
                                                                                              builder: (context) => const UserMyReservation(),
                                                                                            ),
                                                                                          );
                                                                                        },
                                                                                        style: ElevatedButton.styleFrom(
                                                                                          backgroundColor: Colors.orangeAccent,
                                                                                          minimumSize: const Size(120, 30),
                                                                                        ),
                                                                                        child: const Text(
                                                                                          'YES',
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
                                                              style:
                                                                  ElevatedButton
                                                                      .styleFrom(
                                                                backgroundColor:
                                                                    Colors
                                                                        .orangeAccent,
                                                                minimumSize:
                                                                    const Size(
                                                                        120,
                                                                        30),
                                                              ),
                                                              child: const Text(
                                                                'Yes',
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
                                    child: const Text('SUBMIT'),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 230,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
