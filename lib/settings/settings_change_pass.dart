import 'package:flutter/material.dart';

class changePass extends StatefulWidget {
  const changePass({super.key});

  @override
  State<changePass> createState() => _changePassState();
}

class _changePassState extends State<changePass> {
  

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
                      'Change Password',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
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
                        width: 30,
                        height: 30,
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
                    height: 20,
                  ),
                  const Row(
                    children: [
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        'Pick an Account',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                          Navigator.of(context).pop();
                          Navigator.of(context).pop();
                          Navigator.of(context).pop();
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (context) => const LoginTwo(),
                          //   ),
                          // );
                        },
                        child: Container(
                          color: Colors.transparent,
                          width: 330,
                          height: 50,
                          child: Row(
                            children: [
                              Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.grey[350],
                                ),
                                child: Icon(
                                  Icons.person_outline,
                                  size: 30,
                                  color: Colors.grey.shade700,
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              const Text('user001@binus.edu'),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                          Navigator.of(context).pop();
                          Navigator.of(context).pop();
                          Navigator.of(context).pop();
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (context) => const LoginTwo(),
                          //   ),
                          // );
                        },
                        child: Container(
                          color: Colors.transparent,
                          width: 330,
                          height: 50,
                          child: Row(
                            children: [
                              Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.grey[350],
                                ),
                                child: Icon(
                                  Icons.person_outline,
                                  size: 30,
                                  color: Colors.grey.shade700,
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              const Text('user002@binus.edu'),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: [
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
                          //     builder: (context) => const LoginOne(),
                          //   ),
                          // );
                        },
                        child: Container(
                          color: Colors.transparent,
                          width: 330,
                          height: 50,
                          child: Row(
                            children: [
                              Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.grey[350],
                                ),
                                child: Icon(
                                  Icons.add,
                                  size: 25,
                                  color: Colors.grey.shade700,
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              const Text('Use another account'),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
