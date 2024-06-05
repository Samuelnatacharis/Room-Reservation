import 'package:iterasi2/config/animated_page_route.dart';
import 'package:iterasi2/settings/settings_change_pass.dart';
import 'package:iterasi2/settings/settings_send_feedback.dart';
import 'package:iterasi2/settings/settings_switch_lang.dart';
import 'package:flutter/material.dart';

class settings extends StatefulWidget {
  const settings({super.key});

  @override
  State<settings> createState() => _settingsState();
}

class _settingsState extends State<settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
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
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text(
                      'Settings',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
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
                    width: 20,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.white,
                        width: 1.5,
                      ),
                      color: Colors.grey[600],
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(right: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'USER NAME',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            'BN*********',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 1,
                color: Colors.grey[350],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 30,
                  ),
                  Icon(
                    Icons.person,
                    size: 30,
                    color: Colors.grey[500],
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  const Text(
                    'Role',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              const Row(
                children: [
                  SizedBox(
                    width: 85,
                  ),
                  Text(
                    'Employee',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              const Row(
                children: [
                  SizedBox(
                    width: 85,
                  ),
                  Text(
                    'Undergraduate',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              const Row(
                children: [
                  SizedBox(
                    width: 85,
                  ),
                  Text(
                    'BINUS University',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 1,
                color: Colors.grey[350],
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    AnimatedPageRoute(page: const changePass()),
                  );
                },
                child: Container(
                  height: 50,
                  color: Colors.transparent,
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 30,
                      ),
                      Icon(
                        Icons.key,
                        size: 30,
                        color: Colors.grey[500],
                      ),
                      const SizedBox(
                        width: 25,
                      ),
                      const Text(
                        'Change Password',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: 50,
                  color: Colors.transparent,
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 30,
                      ),
                      Icon(
                        Icons.shield_outlined,
                        size: 30,
                        color: Colors.grey[500],
                      ),
                      const SizedBox(
                        width: 25,
                      ),
                      const Text(
                        'Privacy Policy',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    AnimatedPageRoute(page: const switchLang()),
                  );
                },
                child: Container(
                  height: 50,
                  color: Colors.transparent,
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 30,
                      ),
                      Icon(
                        Icons.language,
                        size: 30,
                        color: Colors.grey[500],
                      ),
                      const SizedBox(
                        width: 25,
                      ),
                      const Text(
                        'Switch Language',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: 50,
                  color: Colors.transparent,
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 30,
                      ),
                      Icon(
                        Icons.edit_document,
                        size: 30,
                        color: Colors.grey[500],
                      ),
                      const SizedBox(
                        width: 25,
                      ),
                      const Text(
                        'Terms & Conditions',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    AnimatedPageRoute(page: const sendFeedback()),
                  );
                },
                child: Container(
                  height: 50,
                  color: Colors.transparent,
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 30,
                      ),
                      Icon(
                        Icons.feedback_outlined,
                        size: 30,
                        color: Colors.grey[500],
                      ),
                      const SizedBox(
                        width: 25,
                      ),
                      const Text(
                        'Send Feedback',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                height: 1,
                color: Colors.grey[350],
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).pop();
                  Navigator.of(context).pop();
                  Navigator.of(context).pop();
                  Navigator.of(context).pop();
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => const FirstPageApp(),
                  //   ),
                  // );
                },
                child: Container(
                  height: 50,
                  color: Colors.transparent,
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 30,
                      ),
                      Icon(
                        Icons.logout_outlined,
                        size: 30,
                        color: Colors.grey[500],
                      ),
                      const SizedBox(
                        width: 25,
                      ),
                      const Text(
                        'Log Out',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
