import 'package:flutter/material.dart';
import 'package:flutter_application_cab_application/map.dart';

class destination extends StatefulWidget {
  const destination({Key? key}) : super(key: key);

  @override
  State<destination> createState() => _destinationState();
}

class _destinationState extends State<destination> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Select destination',
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white, // Set AppBar background color
      ),
      body: Column(
        children: [
          Image.asset(
            'assets/dest1.png',
            fit: BoxFit.contain,
          ),
          Stack(
            children: [
              Image.asset(
                'assets/dest2.png',
                fit: BoxFit.contain,
              ),
              Positioned(
                top: 50,
                left: 0,
                right: 220,
                bottom: 0,
                child: Image.asset(
                  'assets/dest3.png',
                  height: 200, // Adjust height as needed
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            width: 300,
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const map();
                    },
                  ),
                );
              },
              child: const Text(
                "Choose on the Map",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  const Color.fromARGB(255, 54, 1, 100),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
