import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(FlutterPromoApp());
}

class FlutterPromoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FlutterPromoScreen(), // Corrected: Use FlutterPromoScreen here
    );
  }
}

class FlutterPromoScreen extends StatefulWidget {
  @override
  _FlutterPromoScreenState createState() => _FlutterPromoScreenState();
}

class _FlutterPromoScreenState extends State<FlutterPromoScreen> {
  double _textPosition = 0.0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startTextAnimation();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void _startTextAnimation() {
    _timer = Timer.periodic(Duration(milliseconds: 20), (timer) {
      setState(() {
        _textPosition += 2;
        if (_textPosition > MediaQuery.of(context).size.width) {
          _textPosition = -150; // Reset to start position
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
          centerTitle: true,
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 100,
                  child: Stack(
                    children: [
                      Positioned(
                        left: _textPosition,
                        top: 20,
                        child: Text(
                          'Flutter Development',
                          style: TextStyle(
                            fontSize: 29,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 40),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  elevation: 5,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/flutter_logo.png', // Replace with your image path
                          height: 200,
                          width: 200,
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Flutter is an open-source UI software development toolkit created by Google for building natively compiled applications for mobile, web, desktop, and embedded devices from a single codebase. It is known for its efficiency, flexibility, and capability to create visually stunning, high-performance applications.',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            height: 1.5,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 40),
                        ElevatedButton(
                          onPressed: () {
                            print('Enroll Now button pressed');
                          },
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                            backgroundColor: Colors.blueAccent.shade100,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Container(
                            height: 50.0,
                            width: 120.0,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [Colors.blue.shade400, Colors.greenAccent.shade400],
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                            ),
                            child: Text(
                              'Enroll Now',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 18.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            ),
        );
    }
}
