import 'package:flutter/material.dart';
import 'package:flutter_application_cab_application/chat.dart';
import 'package:flutter_application_cab_application/destination.dart';

class ride extends StatefulWidget {
  const ride({super.key});

  @override
  State<ride> createState() => _rideState();
}

class _rideState extends State<ride> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Ride Accept',
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            icon: Icon(Icons.arrow_forward, color: Colors.black),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => chat()),
              );
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/map1.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Center(
              child: Image.asset('assets/fair.png'),
            ),
          ),
        ],
      ),
    );
  }
}
