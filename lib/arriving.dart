import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_application_cab_application/payment.dart';
import 'package:flutter_application_cab_application/profile.dart';
import 'package:flutter_application_cab_application/ride.dart';

class arriving extends StatefulWidget {
  const arriving({Key? key}) : super(key: key);

  @override
  State<arriving> createState() => _arrivingState();
}

class _arrivingState extends State<arriving> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 240.0,
            pinned: true,
            backgroundColor: Colors.transparent,
            iconTheme: IconThemeData(
              color: Colors.black, // Change your color here
            ),
            flexibleSpace: FlexibleSpaceBar(
              title: Container(
                width: double.infinity,
                alignment: Alignment.center,
                child: Text(
                  'Arriving Rider',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              titlePadding: EdgeInsets.only(bottom: 8.0),
              background: Stack(
                fit: StackFit.expand,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(
                      0.0,
                    ), // Adjust the radius as needed
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Image.asset(
                          'assets/map1.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Image.asset(
                    'assets/call1.png',
                    width: 250,
                    height: 400,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(
                        'assets/call2.png',
                        width: 200,
                        height: 60,
                      ),
                      Image.asset(
                        'assets/call3.png',
                        width: 100,
                        height: 100,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(
                      20.0,
                    ),
                    // Adjust the radius as needed
                    child: Container(
                      color: Color.fromARGB(179, 230, 229, 229),
                      padding: const EdgeInsets.all(35.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Arriving in',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20),
                              ),
                              Text(
                                '4.49',
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Hyundai Sonata W',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20),
                              ),
                              Text(
                                'FA57294',
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                          Image.asset(
                            'assets/al.png',
                            width: 600,
                            height: 40,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            color: Colors.white,
                            child: Image.asset(
                              'assets/save.png',
                              width: 350,
                              height: 50,
                            ),
                          ),
                          Image.asset(
                            'assets/card.png',
                            width: 600,
                            height: 70,
                          ),
                          Image.asset(
                            'assets/pay.png',
                            width: 240,
                            height: 70,
                          ),
                          Container(
                            color: Colors.white,
                            child: Image.asset(
                              'assets/cancel.png',
                              width: 340,
                              height: 40,
                            ),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Positioned(
                            bottom:
                                10, // Adjust this value to move the button up or down
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
                                          return const profile();
                                        },
                                      ),
                                    );
                                  },
                                  child: const Text(
                                    "Continue",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                      const Color.fromARGB(255, 54, 1, 100),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
