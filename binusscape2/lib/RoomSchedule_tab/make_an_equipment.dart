import 'package:binusscape2/RoomSchedule_tab/make_an_equipment2.dart';
import 'package:binusscape2/template/general_background2.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class MakeAnEquipmentReservation extends StatefulWidget {
  const MakeAnEquipmentReservation({super.key});

  @override
  State<MakeAnEquipmentReservation> createState() =>
      _MakeAnEquipmentReservationState();
}

class _MakeAnEquipmentReservationState
    extends State<MakeAnEquipmentReservation> {
  String selectedEventCat = '';
  bool isChecked = false;
  bool isButtonEnabled = false;

  int _quantity = 0;
  bool isButtonEnabled2 = false;

  int selectedShift = 2;

  bool isOrange = false;
  bool isOrange2 = false;
  bool isOrange3 = false;
  bool isOrange4 = false;
  bool isOrange5 = false;
  bool isOrange6 = false;

  DateTime _selectedDay = DateTime.now();

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

  void _onRectangleClicked() {
    setState(() {
      isButtonEnabled2 = true;
    });
  }

  void _onShiftButtonClicked() {
    print('Shift Button Clicked');
  }

  void _increment() {
    setState(() {
      if (_quantity < 6) {
        _quantity++;
      }
    });
  }

  void _decrement() {
    setState(() {
      if (_quantity > 0) {
        _quantity--;
      }
    });
  }

  void _onCheckboxChanged(bool? value) {
    if (value != null) {
      setState(() {
        isChecked = value;
        isButtonEnabled = value;
      });
    }
  }

  void _onButtonClicked() {
    print('button clicked');
    if (isButtonEnabled) {
      // Navigate to Class A using Navigator
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
                ReservationDetails()), // Replace ClassA() with your class name
      );
    }
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
                          'Make an Equipment Reservation',
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
                                child: TextField(
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.transparent),
                                    ),
                                    hintText: 'BN123******-User',
                                    hintStyle: TextStyle(
                                      color: Colors.grey,
                                    ),
                                    prefixIcon: Icon(Icons.person),
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
                                child: TextField(
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.transparent),
                                    ),
                                    hintText:
                                        'Enter your Department/UKM/HMJ...',
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
                                child: TextField(
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.transparent),
                                    ),
                                    hintText: 'Enter your phone number...',
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
                                    'Equipment',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
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
                                          height: 230,
                                          child: Column(
                                            children: [
                                              const SizedBox(
                                                height: 30,
                                              ),
                                              const Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  Text(
                                                    'Item',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 12),
                                                  ),
                                                  Text(
                                                    'Item Name',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 12),
                                                  ),
                                                  Text(
                                                    'Avail Qty',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 12),
                                                  ),
                                                  Text(
                                                    'Qty Needed',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 12),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(
                                                height: 15,
                                              ),
                                              Container(
                                                width: 350,
                                                height: 1.5,
                                                color: Colors.grey[300],
                                              ),
                                              Row(
                                                children: [
                                                  const SizedBox(
                                                    width: 10,
                                                  ),
                                                  Container(
                                                    width: 80,
                                                    height: 80,
                                                    color: Colors.transparent,
                                                    child: Image.asset(
                                                        'images/oculus.png'),
                                                  ),
                                                  const SizedBox(
                                                    width: 2,
                                                  ),
                                                  Container(
                                                    alignment: Alignment.center,
                                                    width: 80,
                                                    height: 80,
                                                    color: Colors.transparent,
                                                    child: const Text(
                                                      'Oculus Virtual Reality',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 12,
                                                  ),
                                                  Container(
                                                    alignment: Alignment.center,
                                                    width: 80,
                                                    height: 80,
                                                    color: Colors.transparent,
                                                    child: const Text(
                                                      '6',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 110,
                                                    height: 80,
                                                    color: Colors.transparent,
                                                    child: Center(
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceEvenly,
                                                        children: <Widget>[
                                                          GestureDetector(
                                                            onTap: () {
                                                              _decrement();
                                                              print('yes');
                                                            },
                                                            child: SizedBox(
                                                              width: 30,
                                                              height: 30,
                                                              child: Image.asset(
                                                                  'images/removeButton.png'),
                                                            ),
                                                          ),
                                                          Text(
                                                            '$_quantity',
                                                            style:
                                                                const TextStyle(
                                                              fontSize: 14,
                                                            ),
                                                          ),
                                                          GestureDetector(
                                                            onTap: () {
                                                              _increment();
                                                              print('yes');
                                                            },
                                                            child: SizedBox(
                                                              width: 30,
                                                              height: 30,
                                                              child: Image.asset(
                                                                  'images/addButton.png'),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Container(
                                                width: 350,
                                                height: 1.5,
                                                color: Colors.grey[300],
                                              ),
                                              const SizedBox(
                                                height: 20,
                                              ),
                                              ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                  foregroundColor: Colors.white,
                                                  backgroundColor:
                                                      Colors.orangeAccent,
                                                  minimumSize:
                                                      const Size(310, 30),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            7),
                                                  ),
                                                ),
                                                onPressed: () {},
                                                child: const Text('Next'),
                                              ),
                                            ],
                                          ),
                                        );
                                      },
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    minimumSize: const Size(350, 35),
                                    alignment: Alignment.centerLeft,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(0),
                                    ),
                                  ),
                                  child: Container(
                                    width: 300,
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
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                selectedEventCat.isNotEmpty
                                                    ? selectedEventCat
                                                    : 'Select the equipment you\'d like to borrow...',
                                                style: const TextStyle(
                                                  color: Colors.red,
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 12,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
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
                                height: 5,
                              ),
                              const Row(
                                children: [
                                  Text(
                                    'Reservation Purposes',
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
                                child: TextField(
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.transparent),
                                    ),
                                    hintText: 'Enter your purposes here...',
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
                              //*_________disini

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
                                          height: 420,
                                          child: Column(
                                            children: [
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              Container(
                                                color: Colors.grey[350],
                                                width: 90,
                                                height: 4,
                                              ),
                                              const SizedBox(
                                                height: 20,
                                              ),
                                              Container(
                                                padding: const EdgeInsets.only(
                                                    left: 40, right: 40),
                                                color: Colors.transparent,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Container(
                                                      width: 30,
                                                      height: 30,
                                                      decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                        color:
                                                            Colors.transparent,
                                                        border: Border.all(
                                                          color: Colors
                                                              .grey.shade300,
                                                          width: 1.5,
                                                        ),
                                                      ),
                                                      child: const Icon(
                                                        Icons
                                                            .arrow_back_ios_new,
                                                        color: Colors.grey,
                                                        size: 20,
                                                      ),
                                                    ),
                                                    const Text(
                                                      'Desember 2023',
                                                      style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                    Container(
                                                      width: 30,
                                                      height: 30,
                                                      decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                        color:
                                                            Colors.transparent,
                                                        border: Border.all(
                                                          color: Colors
                                                              .grey.shade300,
                                                          width: 1.5,
                                                        ),
                                                      ),
                                                      child: const Icon(
                                                        Icons.arrow_forward_ios,
                                                        color: Colors.grey,
                                                        size: 20,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 15,
                                              ),
                                              SizedBox(
                                                width: 280,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: <Widget>[
                                                    const Text(
                                                      'Sun',
                                                      style: TextStyle(
                                                          color: Colors.red,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                    const Spacer(),
                                                    Text(
                                                      'Mon',
                                                      style: TextStyle(
                                                        fontSize: 14,
                                                        color: Colors.grey[700],
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                    const Spacer(),
                                                    Text(
                                                      'Tue',
                                                      style: TextStyle(
                                                        fontSize: 14,
                                                        color: Colors.grey[700],
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                    const Spacer(),
                                                    Text(
                                                      'Wed',
                                                      style: TextStyle(
                                                        fontSize: 14,
                                                        color: Colors.grey[700],
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                    const Spacer(),
                                                    Text(
                                                      'Thu',
                                                      style: TextStyle(
                                                        fontSize: 14,
                                                        color: Colors.grey[700],
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                    const Spacer(),
                                                    Text(
                                                      'Fri',
                                                      style: TextStyle(
                                                        fontSize: 14,
                                                        color: Colors.grey[700],
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                    const Spacer(),
                                                    Text(
                                                      'Sat',
                                                      style: TextStyle(
                                                        fontSize: 14,
                                                        color: Colors.grey[700],
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 15,
                                              ),
                                              Container(
                                                width: 300,
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                    color: Colors.grey,
                                                    width: 1,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                child: TableCalendar(
                                                  rowHeight: 45,
                                                  calendarStyle:
                                                      const CalendarStyle(
                                                    cellMargin:
                                                        EdgeInsets.all(2),
                                                    defaultTextStyle: TextStyle(
                                                      fontSize: 12,
                                                    ),
                                                    weekendTextStyle: TextStyle(
                                                      fontSize: 12,
                                                    ),
                                                    outsideTextStyle: TextStyle(
                                                      fontSize: 12,
                                                      color: Colors.grey,
                                                    ),
                                                    selectedTextStyle:
                                                        TextStyle(
                                                      fontSize: 12,
                                                      color: Colors.white,
                                                    ),
                                                    todayTextStyle: TextStyle(
                                                      fontSize: 12,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                  headerVisible: false,
                                                  daysOfWeekVisible: false,
                                                  daysOfWeekHeight: 100,
                                                  firstDay:
                                                      DateTime(2020, 1, 1),
                                                  lastDay:
                                                      DateTime(2025, 12, 31),
                                                  focusedDay: DateTime.now(),
                                                  onDaySelected: (selectedDay,
                                                      focusedDay) {
                                                    _selectedDay = selectedDay;
                                                  },
                                                  selectedDayPredicate:
                                                      (DateTime date) {
                                                    return isSameDay(
                                                        date, _selectedDay);
                                                  },
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: <Widget>[
                                                  const Spacer(),
                                                  Row(
                                                    children: [
                                                      Container(
                                                        width: 7,
                                                        height: 7,
                                                        decoration:
                                                            const BoxDecoration(
                                                          shape:
                                                              BoxShape.circle,
                                                          color: Colors.green,
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                        width: 10,
                                                      ),
                                                      const Text(
                                                        '100% Shift Available',
                                                        style: TextStyle(
                                                          fontSize: 9,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  const Spacer(),
                                                  Row(
                                                    children: [
                                                      Container(
                                                        width: 7,
                                                        height: 7,
                                                        decoration:
                                                            const BoxDecoration(
                                                          shape:
                                                              BoxShape.circle,
                                                          color: Colors.blue,
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                        width: 10,
                                                      ),
                                                      const Text(
                                                        '50% Shift Available',
                                                        style: TextStyle(
                                                          fontSize: 9,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  const Spacer(),
                                                  Row(
                                                    children: [
                                                      Container(
                                                        width: 7,
                                                        height: 7,
                                                        decoration:
                                                            const BoxDecoration(
                                                          shape:
                                                              BoxShape.circle,
                                                          color: Colors.red,
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                        width: 10,
                                                      ),
                                                      const Text(
                                                        '0% Shift Available',
                                                        style: TextStyle(
                                                          fontSize: 9,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  const Spacer(),
                                                ],
                                              ),
                                            ],
                                          ),
                                        );
                                      },
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    minimumSize: const Size(350, 35),
                                    alignment: Alignment.centerLeft,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(0),
                                    ),
                                  ),
                                  child: Container(
                                    width: 300,
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
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                selectedEventCat.isNotEmpty
                                                    ? selectedEventCat
                                                    : 'Tell us when you want to use the room',
                                                style: const TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 12,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
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
                                          height: 380,
                                          child: Column(
                                            children: [
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              Container(
                                                color: Colors.grey[350],
                                                width: 90,
                                                height: 4,
                                              ),
                                              const SizedBox(
                                                height: 20,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  GestureDetector(
                                                    onTap: toggleColor,
                                                    child: Container(
                                                      width: 300,
                                                      height: 35,
                                                      decoration: BoxDecoration(
                                                        color: isOrange
                                                            ? Colors.orange
                                                            : Colors.white,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(7),
                                                        border: Border.all(
                                                          color: Colors
                                                              .grey.shade300,
                                                          width: 1,
                                                        ),
                                                      ),
                                                      child: Center(
                                                        child: Text(
                                                          isOrange
                                                              ? 'Shift 1                      07.20 - 09.00 WIB'
                                                              : 'Shift 1                      07.20 - 09.00 WIB',
                                                          style: TextStyle(
                                                            fontSize: 13,
                                                            color: isOrange
                                                                ? Colors.white
                                                                : Colors.black,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  GestureDetector(
                                                    onTap: toggleColor2,
                                                    child: Container(
                                                      width: 300,
                                                      height: 35,
                                                      decoration: BoxDecoration(
                                                        color: isOrange2
                                                            ? Colors.orange
                                                            : Colors.white,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(7),
                                                        border: Border.all(
                                                          color: Colors
                                                              .grey.shade300,
                                                          width: 1,
                                                        ),
                                                      ),
                                                      child: Center(
                                                        child: Text(
                                                          isOrange2
                                                              ? 'Shift 2                      09.20 - 11.00 WIB'
                                                              : 'Shift 2                      09.20 - 11.00 WIB',
                                                          style: TextStyle(
                                                            fontSize: 13,
                                                            color: isOrange2
                                                                ? Colors.white
                                                                : Colors.black,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  GestureDetector(
                                                    onTap: toggleColor3,
                                                    child: Container(
                                                      width: 300,
                                                      height: 35,
                                                      decoration: BoxDecoration(
                                                        color: isOrange3
                                                            ? Colors.orange
                                                            : Colors.white,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(7),
                                                        border: Border.all(
                                                          color: Colors
                                                              .grey.shade300,
                                                          width: 1,
                                                        ),
                                                      ),
                                                      child: Center(
                                                        child: Text(
                                                          isOrange3
                                                              ? 'Shift 3                      11.20 - 13.00 WIB'
                                                              : 'Shift 3                      11.20 - 13.00 WIB',
                                                          style: TextStyle(
                                                            fontSize: 13,
                                                            color: isOrange3
                                                                ? Colors.white
                                                                : Colors.black,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  GestureDetector(
                                                    onTap: toggleColor4,
                                                    child: Container(
                                                      width: 300,
                                                      height: 35,
                                                      decoration: BoxDecoration(
                                                        color: isOrange4
                                                            ? Colors.orange
                                                            : Colors.white,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(7),
                                                        border: Border.all(
                                                          color: Colors
                                                              .grey.shade300,
                                                          width: 1,
                                                        ),
                                                      ),
                                                      child: Center(
                                                        child: Text(
                                                          isOrange4
                                                              ? 'Shift 4                      13.20 - 15.00 WIB'
                                                              : 'Shift 4                      13.20 - 15.00 WIB',
                                                          style: TextStyle(
                                                            fontSize: 13,
                                                            color: isOrange4
                                                                ? Colors.white
                                                                : Colors.black,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  GestureDetector(
                                                    onTap: toggleColor5,
                                                    child: Container(
                                                      width: 300,
                                                      height: 35,
                                                      decoration: BoxDecoration(
                                                        color: isOrange5
                                                            ? Colors.orange
                                                            : Colors.white,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(7),
                                                        border: Border.all(
                                                          color: Colors
                                                              .grey.shade300,
                                                          width: 1,
                                                        ),
                                                      ),
                                                      child: Center(
                                                        child: Text(
                                                          isOrange5
                                                              ? 'Shift 5                      15.20 - 17.00 WIB'
                                                              : 'Shift 5                      15.20 - 17.00 WIB',
                                                          style: TextStyle(
                                                            fontSize: 13,
                                                            color: isOrange5
                                                                ? Colors.white
                                                                : Colors.black,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  GestureDetector(
                                                    onTap: toggleColor6,
                                                    child: Container(
                                                      width: 300,
                                                      height: 35,
                                                      decoration: BoxDecoration(
                                                        color: isOrange6
                                                            ? Colors.orange
                                                            : Colors.white,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(7),
                                                        border: Border.all(
                                                          color: Colors
                                                              .grey.shade300,
                                                          width: 1,
                                                        ),
                                                      ),
                                                      child: Center(
                                                        child: Text(
                                                          isOrange6
                                                              ? 'Shift 6                      17.20 - 19.00 WIB'
                                                              : 'Shift 6                      17.20 - 19.00 WIB',
                                                          style: TextStyle(
                                                            fontSize: 13,
                                                            color: isOrange6
                                                                ? Colors.white
                                                                : Colors.black,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(
                                                height: 20,
                                              ),
                                              ElevatedButton(
                                                onPressed: (isOrange ||
                                                        isOrange2 ||
                                                        isOrange3 ||
                                                        isOrange4 ||
                                                        isOrange5 ||
                                                        isOrange6)
                                                    ? () {
                                                      Navigator.pop(context);
                                                        print('yes');
                                                      }
                                                    : null,
                                                style: ButtonStyle(
                                                  minimumSize:
                                                      MaterialStateProperty.all(
                                                          const Size(150, 35)),
                                                ),
                                                child: const Text('Ok'),
                                              ),
                                            ],
                                          ),
                                        );
                                      },
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    minimumSize: const Size(350, 35),
                                    alignment: Alignment.centerLeft,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(0),
                                    ),
                                  ),
                                  child: Container(
                                    width: 300,
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 5, horizontal: 0),
                                    decoration: const BoxDecoration(
                                      color: Colors.white,
                                    ),
                                    child: Row(
                                      children: [
                                        const Expanded(
                                          flex: 10,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Pick shift you desire the most. Don\'t forget to discuss with your teammate!',
                                                style:  TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 12,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
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
                                height: 150,
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
                                          width: 290,
                                          child: const Text(
                                            'It is mandatory to return the items within the specified time.',
                                            style: TextStyle(
                                              color: Colors.red,
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
                                            'Damaging or removing items will incure a fine in accordance with the applicable amount.',
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

                              Center(
                                child: Theme(
                                  data: ThemeData(
                                    checkboxTheme: CheckboxThemeData(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        side: const BorderSide(
                                            color: Colors.grey),
                                      ),
                                    ),
                                  ),
                                  child: Row(
                                    children: [
                                      Checkbox(
                                        value: isChecked,
                                        onChanged: _onCheckboxChanged,
                                        activeColor: Colors.green,
                                      ),
                                      Container(
                                        color: Colors.transparent,
                                        child: const Text(
                                          'I agree with the rules and regulations.',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  foregroundColor: Colors.white,
                                  backgroundColor: Colors.orangeAccent,
                                  minimumSize: const Size(310, 30),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(7),
                                  ),
                                ),
                                onPressed:
                                    isButtonEnabled ? _onButtonClicked : null,
                                child: const Text('NEXT'),
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
