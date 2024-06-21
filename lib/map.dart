import 'package:flutter/material.dart';
import 'package:flutter_application_cab_application/order.dart';

class map extends StatefulWidget {
  const map({Key? key}) : super(key: key);

  @override
  State<map> createState() => _mapState();
}

class _mapState extends State<map> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/map2.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: 20, // Adjust this value to move the button up or down
            left: 0,
            right: 0,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: 300,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return const order();
                        },
                      ),
                    );
                  },
                  child: const Text(
                    "Choose",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(255, 54, 1, 100),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
