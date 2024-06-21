import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_application_cab_application/payment.dart';

class order extends StatefulWidget {
  const order({Key? key}) : super(key: key);

  @override
  State<order> createState() => _orderState();
}

class _orderState extends State<order> {
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
                  'Our Vehicle',
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
                    ), // Adjust the radius as needed
                    child: Container(
                      color: Color.fromARGB(179, 230, 229, 229),
                      padding: const EdgeInsets.all(35.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/al.png',
                            width: 600,
                            height: 40,
                          ),
                          Image.asset(
                            'assets/cars.png',
                            width: 600,
                            height: 160,
                          ),
                          Image.asset(
                            'assets/amount.png',
                            width: 600,
                            height: 70,
                          ),
                          Image.asset(
                            'assets/card.png',
                            width: 600,
                            height: 70,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Positioned(
                            bottom:
                                20, // Adjust this value to move the button up or down
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
                                          return const payment();
                                        },
                                      ),
                                    );
                                  },
                                  child: const Text(
                                    "Order",
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
