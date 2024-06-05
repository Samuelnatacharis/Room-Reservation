import 'package:binusscape2/RoomSchedule_tab/make_a_reservation.dart';
import 'package:binusscape2/template/general_background.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
// import 'package:intl/intl.dart';

class UserRoomSchedule extends StatefulWidget {
  const UserRoomSchedule({super.key});

  @override
  State<UserRoomSchedule> createState() => _UserRoomScheduleState();
}

class _UserRoomScheduleState extends State<UserRoomSchedule> {
  late DateTime _selectedDay;
  // DateTime _selectedDay = DateTime.now();
  bool _isBoxVisible = false;

  String selected_month = '';

  TextStyle dayTextStyle = TextStyle(
    fontSize: 14,
    color: Colors.grey[700],
    fontWeight: FontWeight.w500,
  );

  Map<DateTime, List<dynamic>> _events = {
    DateTime.now(): ['Event A', 'Event B']
    // Add your events here or fetch from a data source
  };

  // int _currentIndexMonth = 0;
  // List <String> _headersMonth = ['January', 'February', 'March'];

  @override
  void initState() {
    super.initState();
    _selectedDay = DateTime.now(); // Initialize _selectedDay in initState
  }

  @override
  Widget build(BuildContext context) {
    // String selectedMonth = DateFormat.MMMM().format(_selectedDay);
    // String selectedYear = DateFormat.y().format(_selectedDay);
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          child: GeneralBackground(
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
                      'Room Schedule',
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
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          // isScrollControlled: true,
                          shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.vertical(top: Radius.circular(15)),
                          ),
                          builder: (BuildContext context) {
                            return SizedBox(
                              height: 280,
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
                                        left: 15, right: 15),
                                    color: Colors.transparent,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          width: 30,
                                          height: 30,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.transparent,
                                            border: Border.all(
                                              color: Colors.grey.shade300,
                                              width: 1.5,
                                            ),
                                          ),
                                          child: const Icon(
                                            Icons.arrow_back_ios_new,
                                            color: Colors.grey,
                                            size: 20,
                                          ),
                                        ),
                                        const Text(
                                          '2023',
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        Container(
                                          width: 30,
                                          height: 30,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.transparent,
                                            border: Border.all(
                                              color: Colors.grey.shade300,
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
                                    height: 10,
                                  ),
                                  Container(
                                    width: 350,
                                    height: 1.5,
                                    color: Colors.grey[300],
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.pop(context);
                                        },
                                        child: Container(
                                          alignment: Alignment.center,
                                          width: 70,
                                          height: 40,
                                          color: Colors.transparent,
                                          child: Text(
                                            'Jan',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 17,
                                              color: Colors.grey[700],
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.pop(context);
                                        },
                                        child: Container(
                                          alignment: Alignment.center,
                                          width: 70,
                                          height: 40,
                                          color: Colors.transparent,
                                          child: Text(
                                            'Feb',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 17,
                                              color: Colors.grey[700],
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.pop(context);
                                        },
                                        child: Container(
                                          alignment: Alignment.center,
                                          width: 70,
                                          height: 40,
                                          color: Colors.transparent,
                                          child: Text(
                                            'Mar',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 17,
                                              color: Colors.grey[700],
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.pop(context);
                                        },
                                        child: Container(
                                          alignment: Alignment.center,
                                          width: 70,
                                          height: 40,
                                          color: Colors.transparent,
                                          child: Text(
                                            'Apr',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 17,
                                              color: Colors.grey[700],
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 25,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.pop(context);
                                        },
                                        child: Container(
                                          alignment: Alignment.center,
                                          width: 70,
                                          height: 40,
                                          color: Colors.transparent,
                                          child: Text(
                                            'May',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 17,
                                              color: Colors.grey[700],
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.pop(context);
                                        },
                                        child: Container(
                                          alignment: Alignment.center,
                                          width: 70,
                                          height: 40,
                                          color: Colors.transparent,
                                          child: Text(
                                            'Jun',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 17,
                                              color: Colors.grey[700],
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.pop(context);
                                        },
                                        child: Container(
                                          alignment: Alignment.center,
                                          width: 70,
                                          height: 40,
                                          color: Colors.transparent,
                                          child: Text(
                                            'Jul',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 17,
                                              color: Colors.grey[700],
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.pop(context);
                                        },
                                        child: Container(
                                          alignment: Alignment.center,
                                          width: 70,
                                          height: 40,
                                          color: Colors.transparent,
                                          child: Text(
                                            'Aug',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 17,
                                              color: Colors.grey[700],
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 25,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.pop(context);
                                        },
                                        child: Container(
                                          alignment: Alignment.center,
                                          width: 70,
                                          height: 40,
                                          color: Colors.transparent,
                                          child: Text(
                                            'Sep',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 17,
                                              color: Colors.grey[700],
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.pop(context);
                                        },
                                        child: Container(
                                          alignment: Alignment.center,
                                          width: 70,
                                          height: 40,
                                          color: Colors.transparent,
                                          child: Text(
                                            'Okt',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 17,
                                              color: Colors.grey[700],
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.pop(context);
                                        },
                                        child: Container(
                                          alignment: Alignment.center,
                                          width: 70,
                                          height: 40,
                                          color: Colors.transparent,
                                          child: Text(
                                            'Nov',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 17,
                                              color: Colors.grey[700],
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.pop(context);
                                        },
                                        child: Container(
                                          alignment: Alignment.center,
                                          width: 70,
                                          height: 40,
                                          color: Colors.transparent,
                                          child: Text(
                                            'Des',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 17,
                                              color: Colors.grey[700],
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ),
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
                                    selected_month.isNotEmpty
                                        ? selected_month
                                        : 'Choose Month...',
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
                ),

//*______________________________________________________________________________________calendar

                // GestureDetector(
                //   onHorizontalDragUpdate: (details){
                //     if (details.primaryDelta! > 0){
                //       // Swipe Left
                //       setState(() {
                //         _currentIndexMonth = (_currentIndexMonth + 1) % _headersMonth.length;
                //       });
                //     } else if (details.primaryDelta! < 0){
                //       // Swipe Right
                //       setState(() {
                //         _currentIndexMonth = (_currentIndexMonth - 1 + _headersMonth.length) % _headersMonth.length;
                //       });
                //     }
                //   },
                // ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7.0),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 25,
                      ),
                      Text(
                        'Desember 2023',
                        style: TextStyle(
                          color: Colors.grey[700],
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      SizedBox(
                        width: 280,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            const Text(
                              'Sun',
                              style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.w500),
                            ),
                            const Spacer(),
                            Text(
                              'Mon',
                              style: dayTextStyle,
                            ),
                            const Spacer(),
                            Text(
                              'Tue',
                              style: dayTextStyle,
                            ),
                            const Spacer(),
                            Text(
                              'Wed',
                              style: dayTextStyle,
                            ),
                            const Spacer(),
                            Text(
                              'Thu',
                              style: dayTextStyle,
                            ),
                            const Spacer(),
                            Text(
                              'Fri',
                              style: dayTextStyle,
                            ),
                            const Spacer(),
                            Text(
                              'Sat',
                              style: dayTextStyle,
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
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TableCalendar(
                          calendarStyle: const CalendarStyle(
                            cellMargin: EdgeInsets.all(2),
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
                            selectedTextStyle: TextStyle(
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
                          focusedDay: _selectedDay,
                          firstDay: DateTime(2020, 1, 1),
                          lastDay: DateTime(2025, 12, 31),
                          onDaySelected:
                              (DateTime selectedDay, DateTime focusedDay) {
                            setState(() {
                              _selectedDay = selectedDay;
                              _isBoxVisible = true;
                            });
                          },
                          eventLoader: (day) => _events[day] ?? [],
                          selectedDayPredicate: (DateTime date) {
                            return isSameDay(date, _selectedDay);
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      // __________________________________________________
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          const Spacer(),
                          Row(
                            children: [
                              Container(
                                width: 7,
                                height: 7,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
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
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
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
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
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
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Visibility(
                  visible: _isBoxVisible,
                  child: Container(
                    width: 350,
                    // height: 400,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(7),
                      // border: Border.all(color: Colors.black),
                    ),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 15,
                        ),
                        const Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              'Event',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
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
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(right: 8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Shift 1",
                                      style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                    // SizedBox(height: 2),
                                    Text(
                                      "07.20-09.00",
                                      style: TextStyle(
                                        color: Colors.grey[500],
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 10.0),
                                  child: GestureDetector(
                                    onTap: () {
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
                                                          'Do You Want to Make a Room Reservation?',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                        ),
                                                        const SizedBox(
                                                            height:
                                                                30), // Add space between text sections
                                                        const SizedBox(
                                                            height:
                                                                16), // Add space between text and button
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
                                                                Navigator.push(
                                                                  context,
                                                                  MaterialPageRoute(
                                                                    builder:
                                                                        (context) =>
                                                                            const MakeAReservation(),
                                                                  ),
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
                                    child: Container(
                                      width: 230,
                                      height: 70,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(
                                          color: Colors.grey.shade300,
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Has not been booked',
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.grey[600],
                                              fontWeight: FontWeight.w500,
                                            ),
                                            // textAlign: TextAlign.center,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(right: 8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Shift 2",
                                      style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                    // SizedBox(height: 2),
                                    Text(
                                      "09.20-11.00",
                                      style: TextStyle(
                                        color: Colors.grey[500],
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 10.0),
                                  child: GestureDetector(
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
                                                      const Row(
                                                        children: [
                                                          SizedBox(
                                                            width: 10,
                                                          ),
                                                          Text(
                                                            'Event Name',
                                                            style: TextStyle(
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
                                                            style: TextStyle(
                                                              fontSize: 12,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Divider(
                                                        color: Colors.grey[300],
                                                        thickness: 1,
                                                      ),
                                                      Row(
                                                        children: [
                                                          const SizedBox(
                                                            width: 10,
                                                          ),
                                                          Align(
                                                            alignment: Alignment
                                                                .topLeft,
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
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 12,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
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
                                                          Align(
                                                            alignment: Alignment
                                                                .topLeft,
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
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 12,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      const SizedBox(
                                                        height: 10,
                                                      ),
                                                      const Row(
                                                        children: [
                                                          SizedBox(
                                                            width: 10,
                                                          ),
                                                          Icon(Icons.person),
                                                          SizedBox(
                                                            width: 17,
                                                          ),
                                                          Text(
                                                            'Marsya Destiana',
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 12,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      const SizedBox(
                                                        height: 10,
                                                      ),
                                                      const Row(
                                                        children: [
                                                          SizedBox(
                                                            width: 10,
                                                          ),
                                                          Icon(Icons
                                                              .groups_2_outlined),
                                                          SizedBox(
                                                            width: 17,
                                                          ),
                                                          Text(
                                                            'Industrial Engineering Department',
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 12,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      const SizedBox(
                                                        height: 10,
                                                      ),
                                                      const Row(
                                                        children: [
                                                          SizedBox(
                                                            width: 10,
                                                          ),
                                                          Icon(Icons
                                                              .calendar_month),
                                                          SizedBox(
                                                            width: 17,
                                                          ),
                                                          Text(
                                                            'Training Minitab',
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 12,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
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
                                          );
                                        },
                                      );
                                    },
                                    child: Container(
                                      width: 230,
                                      height: 70,
                                      decoration: BoxDecoration(
                                        color: Colors.orangeAccent,
                                        border: Border.all(
                                          color: Colors.grey.shade300,
                                        ),
                                      ),
                                      child: const Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Event Name',
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500,
                                            ),
                                            // textAlign: TextAlign.center,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(right: 8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Shift 3",
                                      style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                    // SizedBox(height: 2),
                                    Text(
                                      "11.20-13.00",
                                      style: TextStyle(
                                        color: Colors.grey[500],
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 10.0),
                                  child: Container(
                                    width: 230,
                                    height: 70,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                        color: Colors.grey.shade300,
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Has not been booked',
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.grey[600],
                                            fontWeight: FontWeight.w500,
                                          ),
                                          // textAlign: TextAlign.center,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(right: 8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Shift 4",
                                      style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                    // SizedBox(height: 2),
                                    Text(
                                      "13.20-15.00",
                                      style: TextStyle(
                                        color: Colors.grey[500],
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 10.0),
                                  child: Container(
                                    width: 230,
                                    height: 70,
                                    decoration: BoxDecoration(
                                      color: Colors.orangeAccent,
                                      border: Border.all(
                                        color: Colors.grey.shade300,
                                      ),
                                    ),
                                    child: const Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Event Name',
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          // textAlign: TextAlign.center,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(right: 8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Shift 5",
                                      style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                    // SizedBox(height: 2),
                                    Text(
                                      "15.20-17.00",
                                      style: TextStyle(
                                        color: Colors.grey[500],
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 10.0),
                                  child: Container(
                                    width: 230,
                                    height: 70,
                                    decoration: BoxDecoration(
                                      color: Colors.orangeAccent,
                                      border: Border.all(
                                        color: Colors.grey.shade300,
                                      ),
                                    ),
                                    child: const Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Event Name',
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          // textAlign: TextAlign.center,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(right: 8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Shift 6",
                                      style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                    // SizedBox(height: 2),
                                    Text(
                                      "17.20-19.00",
                                      style: TextStyle(
                                        color: Colors.grey[500],
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 10.0),
                                  child: Container(
                                    width: 230,
                                    height: 70,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                        color: Colors.grey.shade300,
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Has not been booked',
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.grey[600],
                                            fontWeight: FontWeight.w500,
                                          ),
                                          // textAlign: TextAlign.center,
                                        ),
                                      ],
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
                      ],
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
