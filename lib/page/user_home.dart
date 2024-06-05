import 'package:flutter/rendering.dart';
import 'package:iterasi2/config/ContainerEvent.dart';
import 'package:iterasi2/config/RoleSelectionWidget.dart';
import 'package:iterasi2/config/animated_page_route.dart';
import 'package:iterasi2/user_home_widgets/help.dart';
import 'package:iterasi2/user_home_widgets/notif.dart';
import 'package:iterasi2/settings/settings.dart';
import 'package:iterasi2/template/general_background.dart';
import 'package:flutter/material.dart';
import 'dart:io';

class UserHome extends StatefulWidget {
  const UserHome({super.key});

  // final List<String> enteredEmails;

  // UserHome(this.enteredEmails);

  @override
  State<UserHome> createState() => _UserHomeState();
}

class _UserHomeState extends State<UserHome> {
  String selectedRole = '';

  bool isExpanded = false;

  String selected_reason = '';
  bool isExpandedReason = false;

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

    // ignore: deprecated_member_use
    return WillPopScope(
      onWillPop: () async {
        bool shouldNavigateBack = await showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('Confirmation'),
              content: const Text('Are you sure you want to exit?'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context)
                        .pop(true); // Pop with true indicating navigate back
                  },
                  child: const Text('Yes'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop(
                        false); // Pop with false indicating don't navigate back
                  },
                  child: const Text('No'),
                ),
              ],
            );
          },
        );
        if (shouldNavigateBack) {
          exit(0); // Close the app if 'Yes' is selected
        }
        return shouldNavigateBack;
      },
      child: Scaffold(
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
                      RoleSelectionWidget(
                        onRoleSelected: (selectedRole) {},
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
                  ContainerBox(
                    ContainerBoxEvent: (a) {},
                  ),
                  //_________________________________________________________gesturedetector
                  const SizedBox(
                    height: 185,
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
