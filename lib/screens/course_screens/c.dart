import 'package:flutter/material.dart';
import 'dart:async';


class CPromoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CPromoScreen(),
    );
  }
}

class CPromoScreen extends StatefulWidget {
  @override
  CPromoScreenState createState() => CPromoScreenState();
}

class CPromoScreenState extends State<CPromoScreen> {
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
          // title: Text('Learn Python Programming'),
          centerTitle: true,
          // backgroundColor: Colors.lightBlueAccent.shade100,

        ),
        body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 100,
                  child: Stack(
                    children: [
                      AnimatedPositioned(
                        duration: Duration(milliseconds: 20),
                        left: _textPosition,
                        top: 20,
                        child: Text(
                          'C Programming Language',
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
                // Card for Python content
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
                        // Image at the top
                        Image.asset(
                          'assets/C_logo.png', // Replace with your image path
                          height: 200,
                          width: 200,
                        ),
                        SizedBox(height: 20),
                        // Text description
                        Text(
                          'The C Programming Course is designed to introduce learners to the foundational concepts of programming using the C language, one of the most widely used and versatile programming languages in the world. ',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            height: 1.5,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 40),
                        // Enroll Now button
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
                              child: Text('Enroll Now', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 18.0),),
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
