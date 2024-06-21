import 'package:flutter/material.dart';
import 'package:flutter_application_cab_application/destination.dart';

class thanks extends StatefulWidget {
  const thanks({super.key});

  @override
  State<thanks> createState() => _thanksState();
}

class _thanksState extends State<thanks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Color.fromARGB(255, 54, 1, 100)),
      body: Container(
        padding: const EdgeInsets.all(100.0),
        color: const Color.fromARGB(255, 54, 1, 100),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Thanks Have A Safe Journey',
              style: TextStyle(
                color: Colors.white,
                fontSize: 45,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
