import 'package:binusscape2/page/user_home.dart';
import 'package:binusscape2/settings/settings_send_feedback.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(AppRoutes());
}

class AppRoutes extends StatefulWidget {
  const AppRoutes({super.key});

  @override
  State<AppRoutes> createState() => _AppRoutesState();
}

class _AppRoutesState extends State<AppRoutes> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => UserHome(),
        '/sendfeedback': (context) => sendFeedback(),
      },
      initialRoute: '/', // Set the initial route
    );
  }
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       routes: {
//         '/': (context) => UserHome(),
//         '/sendfeedback': (context) => sendFeedback(),
//       },
//       initialRoute: '/', // Set the initial route
//     );
//   }
// }
