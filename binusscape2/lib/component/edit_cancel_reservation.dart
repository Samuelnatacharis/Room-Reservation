import 'package:binusscape2/RoomSchedule_tab/make_a_reservation_edit.dart';
import 'package:binusscape2/page/user_my_reservation.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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

  void _showCustomDialog() {
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
            height: 200,
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
                        'Choose the option below',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      RichText(
                        textAlign: TextAlign.center,
                        text: const TextSpan(
                          children: [
                            TextSpan(
                              text:
                                  "If you want to change the reservation detail, choose",
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
                              text:
                                  ". If you want to cancel reservation, choose",
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
                      const SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MakeAReservationEdit(),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orangeAccent,
                              minimumSize: const Size(120, 30),
                            ),
                            child: const Text(
                              'EDIT',
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
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
                                      width: MediaQuery.of(context).size.width *
                                          0.925,
                                      height: 340,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 30, right: 30),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
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
                                                        fontWeight:
                                                            FontWeight.w500,
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
                                                      color: isChoosen
                                                          ? Colors.orange
                                                          : Colors.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              7),
                                                      border: Border.all(
                                                        color: Colors
                                                            .grey.shade300,
                                                        width: 1,
                                                      ),
                                                    ),
                                                    child: Center(
                                                      child: Text(
                                                        isChoosen
                                                            ? 'Event plans have changed'
                                                            : 'Event plans have changed',
                                                        style: TextStyle(
                                                          fontSize: 13,
                                                          color: isChoosen
                                                              ? Colors.white
                                                              : Colors.black,
                                                          fontWeight:
                                                              FontWeight.w500,
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
                                                      color: isChoosen2
                                                          ? Colors.orange
                                                          : Colors.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              7),
                                                      border: Border.all(
                                                        color: Colors
                                                            .grey.shade300,
                                                        width: 1,
                                                      ),
                                                    ),
                                                    child: Center(
                                                      child: Text(
                                                        isChoosen2
                                                            ? 'Not meeting requirements'
                                                            : 'Not meeting requirements',
                                                        style: TextStyle(
                                                          fontSize: 13,
                                                          color: isChoosen2
                                                              ? Colors.white
                                                              : Colors.black,
                                                          fontWeight:
                                                              FontWeight.w500,
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
                                                      color: isChoosen3
                                                          ? Colors.orange
                                                          : Colors.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              7),
                                                      border: Border.all(
                                                        color: Colors
                                                            .grey.shade300,
                                                        width: 1,
                                                      ),
                                                    ),
                                                    child: Center(
                                                      child: Text(
                                                        isChoosen3
                                                            ? 'Personal reasons'
                                                            : 'Personal reasons',
                                                        style: TextStyle(
                                                          fontSize: 13,
                                                          color: isChoosen3
                                                              ? Colors.white
                                                              : Colors.black,
                                                          fontWeight:
                                                              FontWeight.w500,
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
                                                      color: isChoosen4
                                                          ? Colors.orange
                                                          : Colors.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              7),
                                                      border: Border.all(
                                                        color: Colors
                                                            .grey.shade300,
                                                        width: 1,
                                                      ),
                                                    ),
                                                    child: Center(
                                                      child: Text(
                                                        isChoosen4
                                                            ? 'Other'
                                                            : 'Other',
                                                        style: TextStyle(
                                                          fontSize: 13,
                                                          color: isChoosen4
                                                              ? Colors.white
                                                              : Colors.black,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 15,
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    ElevatedButton(
                                                      onPressed: (isChoosen ||
                                                              isChoosen2 ||
                                                              isChoosen3 ||
                                                              isChoosen4)
                                                          ? () {
                                                              Navigator.of(
                                                                      context)
                                                                  .pop();
                                                            }
                                                          : null,
                                                      style: ButtonStyle(
                                                        minimumSize:
                                                            MaterialStateProperty
                                                                .all(const Size(
                                                                    130, 30)),
                                                      ),
                                                      child: const Text('NO'),
                                                    ),
                                                    ElevatedButton(
                                                      onPressed: (isChoosen ||
                                                              isChoosen2 ||
                                                              isChoosen3 ||
                                                              isChoosen4)
                                                          ? () {
                                                              Navigator.of(
                                                                      context)
                                                                  .pop();
                                                              Navigator.of(
                                                                      context)
                                                                  .pop();
                                                              Navigator.push(
                                                                context,
                                                                MaterialPageRoute(
                                                                  builder:
                                                                      (context) =>
                                                                          UserMyReservation(),
                                                                ),
                                                              );
                                                              print('yes');
                                                            }
                                                          : null,
                                                      style: ButtonStyle(
                                                        minimumSize:
                                                            MaterialStateProperty
                                                                .all(const Size(
                                                                    130, 30)),
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
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orangeAccent,
                              minimumSize: const Size(120, 30),
                            ),
                            child: const Text(
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
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful Widget Dialog'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: _showCustomDialog,
          child: Text('Show Dialog'),
        ),
      ),
    );
  }
}
