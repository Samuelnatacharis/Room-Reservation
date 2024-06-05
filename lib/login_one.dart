import 'package:iterasi2/login_two.dart';
import 'package:flutter/material.dart';

class LoginOne extends StatefulWidget {
  const LoginOne({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoginOneState createState() => _LoginOneState();
}

class _LoginOneState extends State<LoginOne> {
  final TextEditingController emailController = TextEditingController();
  bool _notShowErrorEmail = true;
  List<String> enteredEmails = [];

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
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
                    onChanged: (text) {
                      setState(() {
                        _notShowErrorEmail = text.endsWith("@binus.edu");
                      });
                    },
                    decoration: InputDecoration(
                      hintText: 'Email Address',
                      hintStyle: const TextStyle(color: Colors.grey),
                      errorText:
                          _notShowErrorEmail ? null : 'Invalid email address',
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
                        fontWeight: FontWeight.w400,
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
                      onPressed: () {
                        setState(
                          () {
                            String enteredEmail = emailController.text.trim();
                            if (enteredEmail.endsWith("@binus.edu")) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LoginTwo(enteredEmails),
                                ),
                              );
                              enteredEmails.add(emailController.text);
                              emailController.clear();
                            } else if (enteredEmail.isEmpty) {
                              _notShowErrorEmail = false;
                            }
                          },
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        minimumSize: const Size(50, 40),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7),
                        ),
                      ),
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
