import 'package:binusscape2/login_three.dart';
import 'package:flutter/material.dart';

class LoginTwo extends StatefulWidget {
  const LoginTwo({super.key});

  @override
  _LoginTwoState createState() => _LoginTwoState();
}

class _LoginTwoState extends State<LoginTwo> {
  final TextEditingController passController = TextEditingController();
  bool isPassValid = false;
  @override
  void dispose() {
    passController.dispose();
    super.dispose();
  }

  void validatePass(String pass) {
    setState(() {
      isPassValid = pass == '999999';
    });
  }

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
                Row(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.arrow_back,
                        size: 16,
                        color: Colors.grey,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    const Text(
                      'email@binus.edu',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
                const Row(
                  children: [
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      'Enter password',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: 320,
                  child: TextField(
                    obscureText: true,
                    controller: passController,
                    onChanged: (value) {
                      validatePass(value);
                    },
                    decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: TextStyle(color: Colors.grey),
                      errorText:
                          isPassValid ? null : 'Your password is incorrect',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  children: [
                    SizedBox(
                      width: 32,
                    ),
                    Text(
                      'Forgotten my password',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: isPassValid
                          ? () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const LoginThree(),
                                ),
                              );
                            }
                          : null,
                      child: const Text(
                        'Next',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
