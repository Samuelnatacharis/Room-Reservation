import 'package:flutter/material.dart';

class Microsoft extends StatelessWidget {
  const Microsoft({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
        ],
      ),
    );
  }
}
