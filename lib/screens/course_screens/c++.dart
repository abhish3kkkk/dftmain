import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(CCPromoApp());
}

class CCPromoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CCPromoScreen(), // Corrected here
    );
  }
}

class CCPromoScreen extends StatefulWidget {
  @override
  _CCPromoScreenState createState() => _CCPromoScreenState();
}

class _CCPromoScreenState extends State<CCPromoScreen> {
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
                          'C++ Programming Language',
                          style: TextStyle(
                            fontSize: 40,
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
                          'assets/c++_logo.png', // Replace with your image path
                          height: 200,
                          width: 200,
                        ),
                        SizedBox(height: 20),
                        Text(
                          'C++ is a high-level, general-purpose programming language that supports multiple programming paradigms, including procedural, object-oriented, and generic programming. It is an extension of the C programming language, created by Bjarne Stroustrup in 1983, and it has become one of the most widely used programming languages due to its versatility and efficiency.',
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
                            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                            backgroundColor: Colors.deepPurple,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Container(
                            height: 50.0,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [Colors.purpleAccent.shade100, Colors.purpleAccent.shade700],
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                            ),
                            child: Center(
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
