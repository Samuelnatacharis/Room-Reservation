import 'package:flutter/material.dart';
import 'package:iterasi2/config/animated_page_route.dart';
import 'package:iterasi2/page/user_my_reservation.dart';

class ChatAdmin extends StatefulWidget {
  const ChatAdmin({super.key});

  @override
  State<ChatAdmin> createState() => _ChatAdminState();
}

class _ChatAdminState extends State<ChatAdmin> {
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
                      'Chat with Admin',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  color: Colors.transparent,
                  height: 80,
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                const SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  width: 50,
                                  height: 50,
                                  child: Image.asset('images/WhatsAppLogo.png'),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Container(
                                  width: 270,
                                  color: Colors.transparent,
                                  child: const Text(
                                    '+62 812 xxx xxx',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 1,
                color: Colors.grey[350],
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  color: Colors.transparent,
                  height: 80,
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                const SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  width: 50,
                                  height: 50,
                                  child: Image.asset('images/OutlookLogo.png'),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Container(
                                  width: 270,
                                  color: Colors.transparent,
                                  child: const Text(
                                    'labindustribinus@binus.edu',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                          ],
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
