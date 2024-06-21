// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_cab_application/sign_in.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: const RootPage(),
    );
  }
}

class RootPage extends StatefulWidget {
  const RootPage({Key? key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int currentPage = 0;

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
            Container(
              child: Image.asset(
                'assets/logo.png',
                width: 700,
                height: 200,
              ),
            ),
            Text(
              'Our Journey',
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 04,
            ),
            Text(
              'Journey shared,Connection made',
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.only(
                    bottom: 10), // Add some bottom margin if needed
                width: 100, // Set the width
                height: 200, // Set the height
                decoration: BoxDecoration(
                  shape: BoxShape.circle, // Make the container circular
                  border: Border.all(
                    color: Colors.white, // Set the border color to white
                    width: 2.0, // Set the border width
                  ),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const sign_in()),
                    );
                  },
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                    size: 30,
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(255, 54, 1, 100),
                    ),
                    shape: MaterialStateProperty.all<OutlinedBorder>(
                      CircleBorder(),
                    ),
                    minimumSize: MaterialStateProperty.all<Size>(
                      Size(40, 40),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
