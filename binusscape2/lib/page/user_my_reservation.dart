import 'package:binusscape2/MyReservation_tab/myreservation_cancelation.dart';
import 'package:binusscape2/MyReservation_tab/myreservation_history.dart';
import 'package:binusscape2/MyReservation_tab/myreservation_this_month.dart';
import 'package:binusscape2/template/general_background3.dart';
import 'package:flutter/material.dart';

class UserMyReservation extends StatefulWidget {
  const UserMyReservation({super.key});

  @override
  State<UserMyReservation> createState() => _UserMyReservationState();
}

class _UserMyReservationState extends State<UserMyReservation> {
  int _selectedIndex = 9;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        DefaultTabController(
          length: 4,
          child: Scaffold(
            body: SingleChildScrollView(
              child: SizedBox(
                child: GeneralBackground3(
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
                            'My Reservation',
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
                                borderRadius: BorderRadius.circular(
                                    7.0), // Adjust as needed
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
                                          'Search',
                                          style: TextStyle(
                                              color: Colors.grey[500]),
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
                        height: 400,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 15,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 15, right: 15),
                              child: TabBar(
                                labelColor: Colors.black,
                                unselectedLabelColor: Colors.grey,
                                labelPadding:
                                    EdgeInsets.symmetric(horizontal: 0),
                                labelStyle: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                                tabs: [
                                  Tab(
                                    text: 'This Month',
                                  ),
                                  Tab(
                                    text: 'All',
                                  ),
                                  Tab(
                                    text: 'History',
                                  ),
                                  Tab(
                                    text: 'Cancelation',
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: TabBarView(
                                children: [
                                  MyReservationThisMonth(),
                                  MyReservationThisMonth(),
                                  MyReservationHistory(),
                                  MyReservationCancelation(),
                                ],
                              ),
                            ),
                          ],
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
          ),
        ),
      ],
    );
  }

  Widget buildNavBarItem(IconData icon, int index) {
    return GestureDetector(
      onTap: () => _onItemTapped(index),
      child: Container(
        padding: EdgeInsets.all(10),
        child: Icon(
          icon,
          size: 28,
          color: _selectedIndex == index ? Colors.blue : Colors.grey,
        ),
      ),
    );
  }
}
