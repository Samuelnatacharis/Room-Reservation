import 'package:binusscape2/home_page.dart';
import 'package:flutter/material.dart';

class LoginThree extends StatelessWidget {
  const LoginThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            Column(
              children: [
                Row(
                  children: <Widget>[
                    const SizedBox(
                      width: 30,
                    ),
                    Image.asset(
                      'images/microsoft_logo.png',
                      width: 24,
                      height: 24,
                    ),
                    const SizedBox(
                      width: 7,
                    ),
                    const Text(
                      'Microsoft',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 21,
                        fontWeight: FontWeight.w500,
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
                      width: 30,
                    ),
                    Text(
                      'email@binus.edu',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 50),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 30,
                      ),
                      Image.asset(
                        'images/Co.png',
                        width: 40,
                        height: 40,
                      ),
                      const Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Let this app access your info?",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Row(
                  children: [
                    SizedBox(
                      width: 80,
                    ),
                    Text(
                      'unverified',
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  children: [
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      'Company needs your permission to:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 18),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 30,
                      ),
                      Image.asset(
                        'images/microsoft_logo.png',
                        width: 40,
                        height: 40,
                      ),
                      const Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Read your profile",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "Company will be able to read your profile.",
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 330,
                  child: RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text:
                              "Accepting these permissions means that you allow this app to use your data as specified in their Terms of Service and Privacy Statement. ",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                          ),
                        ),
                        TextSpan(
                          text:
                              "The publisher has no provided links to their terms for you to review.",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                        TextSpan(
                          text:
                              " You can change these permissions at https://microsoft.com/consent. ",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                          ),
                        ),
                        TextSpan(
                          text: "Show details",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                          width: 120,
                          height: 30,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.black,
                              backgroundColor: Colors.grey[300],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0),
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const HomePage(children: [],),
                                ),
                              );
                            },
                            child: const Text(
                              'No',
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        SizedBox(
                          width: 120,
                          height: 30,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0),
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const HomePage(children: [],),
                                ),
                              );
                            },
                            child: const Text(
                              'Yes',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
