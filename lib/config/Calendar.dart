import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Calendar extends StatefulWidget {
  const Calendar({Key? key, required this.CalendarEvent}) : super(key: key);

  final Function(String) CalendarEvent;

  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  late DateTime _selectedDay;
  bool _isBoxVisible = true;
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();

  Map<DateTime, List<dynamic>> _events = {
    DateTime.now(): ['Event A', 'Event B']
  };

  @override
  void initState() {
    super.initState();
    _selectedDay = DateTime.now();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
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
        onDaySelected: (DateTime selectedDay, DateTime focusedDay) {
          setState(() {
            _selectedDay = selectedDay;
            _isBoxVisible = true;
          });
        },
        calendarFormat: _calendarFormat,
        onFormatChanged: (format) {
          setState(() {
            _calendarFormat = format;
          });
        },
        onPageChanged: (focusedDay) {
          setState(() {
            _focusedDay = focusedDay;
          });
          // _updateAppBarTitle();
        },
        eventLoader: (day) => _events[day] ?? [],
        selectedDayPredicate: (DateTime date) {
          return isSameDay(date, _selectedDay);
        },
        calendarBuilders: CalendarBuilders(defaultBuilder: (context, date, _) {
          return Stack(
            children: [
              Positioned(
                bottom: 5,
                left: 18,
                child: Container(
                  width: 5,
                  height: 5,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue,
                  ),
                ),
              ),
              Center(
                child: Text('${date.day}'),
              ),
            ],
          );
        }),
      ),
    );
  }
}
