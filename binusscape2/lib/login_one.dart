import 'package:binusscape2/login_two.dart';
import 'package:flutter/material.dart';

class LoginOne extends StatefulWidget {
  const LoginOne({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoginOneState createState() => _LoginOneState();
}

class _LoginOneState extends State<LoginOne> {
  final TextEditingController emailController = TextEditingController();
  bool isEmailValid = false;

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  void validateEmail(String email) {
    setState(() {
      isEmailValid = email.endsWith("@binus.edu");
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
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  children: [
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      'Sign In',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 320,
                  child: TextField(
                    controller: emailController,
                    onChanged: (value) {
                      validateEmail(value);
                    },
                    decoration: InputDecoration(
                      hintText: 'Email Address',
                      hintStyle: const TextStyle(color: Colors.grey),
                      errorText: isEmailValid ? null : 'Invalid email address',
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
                      'Can\'t access your account?',
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
                      onPressed: isEmailValid
                          ? () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const LoginTwo(),
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
