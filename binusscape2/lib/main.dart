import 'package:binusscape2/login_one.dart';
import 'package:binusscape2/settings/settings.dart';
import 'package:binusscape2/settings/settings_send_feedback.dart';
import 'package:flutter/material.dart';

// _________________________________________________________________________________________________

void main() {
  runApp(const MyApp());
}

// _________________________________________________________________________________________________

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/sendfeedback': (context) => sendFeedback(),
        '/settings': (context) => settings(),
      },
      initialRoute: '/', // Set the initial route
      debugShowCheckedModeBanner: false,
      home: IntroScreen(),
    );
  }
}

// _________________________________________________________________________________________________

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _IntroScreenState createState() => _IntroScreenState();
}

// _________________________________________________________________________________________________

class _IntroScreenState extends State<IntroScreen> {
  double opacity = 0.0;

  // animasi

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        opacity = 1.0;
      });
      // pindah ke halaman login
      Future.delayed(const Duration(seconds: 4), () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const FirstPageApp()),
        );
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedOpacity(
          duration: const Duration(seconds: 2),
          opacity: opacity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'images/Binus.png',
                width: 150,
                height: 150,
              ),
              const SizedBox(
                width: 5,
              ),
              Image.asset(
                'images/Scape.png',
                width: 70,
                height: 70,
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.blue,
    );
  }
}

// _________________________________________________________________________________________________

class FirstPageApp extends StatelessWidget {
  const FirstPageApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,

      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 230,
            ),
            Column(
              children: [
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        'images/Binus.png',
                        width: 150,
                        height: 150,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Image.asset(
                        'images/Scape.png',
                        width: 70,
                        height: 70,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
                const Text(
                  'Sign in with your work or school account',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                SizedBox(
                  width: 350,
                  child: ElevatedButton(
                    onPressed: () {
                      debugPrint('Sign in with Microsoft');
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginOne(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      minimumSize: const Size(200, 40),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          'images/microsoft_logo.png',
                          width: 20,
                          height: 20,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          'Sign in with Microsoft',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
