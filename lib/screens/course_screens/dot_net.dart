import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(DotPromoApp());
}

class DotPromoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DotPromoScreen(), // Corrected here
    );
  }
}

class DotPromoScreen extends StatefulWidget {
  @override
  _DotPromoScreenState createState() => _DotPromoScreenState();
}

class _DotPromoScreenState extends State<DotPromoScreen> {
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
                        right: _textPosition,
                        top: 20,
                        child: Text(
                          '. Net Programming ',
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
                          'assets/dotnet_logo.png', // Replace with your image path
                          height: 200,
                          width: 200,
                        ),
                        SizedBox(height: 20),
                        Text(
                          '.NET (pronounced "dot net") is a free, open-source, cross-platform developer platform created by Microsoft. It is widely used to build a variety of applications, from desktop to web, cloud, mobile, gaming, and IoT (Internet of Things)..NET is a robust, versatile, and modern platform tailored to meet the needs of developers building a wide range of applications, making it an excellent choice for individuals and organizations aiming to deliver reliable, scalable, and high-performance solutions.',
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
