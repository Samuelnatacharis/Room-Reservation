import 'package:flutter/material.dart';
import 'package:iterasi2/config/tutorial_page/makereservationtutorialpage.dart';

class MakeReservationTutorial extends StatefulWidget {
  const MakeReservationTutorial({super.key});

  @override
  State<MakeReservationTutorial> createState() =>
      _MakeReservationTutorialState();
}

class _MakeReservationTutorialState extends State<MakeReservationTutorial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          child: makereservationtutorial1(),
        ),
      ),
    );
  }
}
