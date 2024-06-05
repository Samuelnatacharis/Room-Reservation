import 'package:iterasi2/login_three.dart';
import 'package:flutter/material.dart';

class LoginTwo extends StatefulWidget {
  // const LoginTwo({super.key});
  final List<String> enteredEmails;

  LoginTwo(this.enteredEmails);

  @override
  _LoginTwoState createState() => _LoginTwoState();
}

class _LoginTwoState extends State<LoginTwo> {
  final TextEditingController passController = TextEditingController();
  bool _notShowErrorPass = true;
  List<String> enteredPass = [];

  @override
  void dispose() {
    passController.dispose();
    super.dispose();
  }

  // void validatePass(String pass) {
  //   setState(() {
  //     isPassValid = pass == ' ';
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (widget.enteredEmails.isNotEmpty) {
          widget.enteredEmails.removeAt(0);
        }
        Navigator.pop(context);
        return false;
      },
      child: Scaffold(
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
                        icon: Icon(
                          Icons.arrow_back,
                          size: 22,
                          color: Colors.grey[600],
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                          widget.enteredEmails.removeAt(0);
                        },
                      ),
                      Text(
                        '${widget.enteredEmails[0]}',
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
                    height: 20,
                  ),
                  SizedBox(
                    width: 320,
                    child: TextField(
                      obscureText: true,
                      controller: passController,
                      onChanged: (text) {
                        setState(() {
                          _notShowErrorPass = text.endsWith("999999");
                        });
                      },
                      decoration: InputDecoration(
                        hintText: 'Password',
                        hintStyle: const TextStyle(color: Colors.grey),
                        errorText: _notShowErrorPass
                            ? null
                            : 'Your password is incorrect',
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
                              String enteredPassword =
                                  passController.text.trim();
                              if (enteredPassword == "999999") {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        LoginThree(widget.enteredEmails),
                                  ),
                                );
                                enteredPass.add(passController.text);
                                passController.clear();
                              } else {
                                _notShowErrorPass = false;
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
      ),
    );
  }
}
