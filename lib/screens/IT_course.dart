import 'package:flutter/material.dart';
import '../screens/course_screens/python.dart';
import '../screens/course_screens/c.dart';
import '../screens/course_screens/c++.dart';
import '../screens/course_screens/java.dart';
import '../screens/course_screens/android.dart';
import '../screens/course_screens/dot_net.dart';
import '../screens/course_screens/core_php.dart';
import '../screens/course_screens/flutter.dart';
import '../screens/course_screens/software.dart';
import '../screens/course_screens/web_dev.dart';


class IT extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ITScreen(),
    );
  }
}

class ITScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ITState();
  }
}

class ITState extends State<ITScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          height: MediaQuery.sizeOf(context).height*.5,
          child: Row(
            children: [
              Text('IT Courses',
                style: TextStyle(
                  fontSize: 29,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Expanded(
                flex: 0,
                child: GridView.count(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  children: [
                    Card(
                      elevation: 9,
                      child: GestureDetector(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/C_logo.png',scale: 22),
                            Text('C programming Language'),
                          ],
                        ),
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: ((context) => CPromoScreen()),
                            ),
                          );
                        },
                      ),
                    ),
                    Card(
                      elevation: 9,
                      child: GestureDetector(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/python_logo.png',scale: 12),
                            Text('Python'),
                          ],
                        ),
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: ((context) => PythonPromoScreen()),
                            ),
                          );
                        },
                      ),
                    ),
                    Card(
                      elevation: 9,
                      child: GestureDetector(
                        child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/c++_logo.png',scale: 3),
                          Text('C++'),
                        ],
                      ),
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: ((context) => CCPromoScreen()),
                            ),
                          );
                        },
                      ),
                    ),
                    Card(
                      elevation: 9,
                      child: GestureDetector(
                        child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/java_logo.png',scale: 20),
                          Text('Java'),
                        ],
                      ),
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: ((context) => JavaPromoScreen()),
                            ),
                          );
                        },
                      ),
                    ),
                    Card(
                      elevation: 9,
                      child: GestureDetector(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/web_dev_logo.png',scale: 17),
                            Text('Web Development'),
                          ],
                        ),
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: ((context) => WebPromoScreen()),
                            ),
                          );
                        },
                      ),
                    ),
                    Card(
                      elevation: 9,
                      child: GestureDetector(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/android_logo.png',scale: 20),
                            Text('Android'),
                          ],
                        ),
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: ((context) => AndroidPromoScreen()),
                            ),
                          );
                        },
                      ),
                    ),
                    Card(
                      elevation: 9,
                      child: GestureDetector(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/dotnet_logo.png',scale: 6),
                            Text('Dotnet'),
                          ],
                        ),
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: ((context) => DotPromoScreen()),
                            ),
                          );
                        },
                      ),
                    ),
                    Card(
                      elevation: 9,
                      child: GestureDetector(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/php_logo.png',scale: 9),
                            Text('Core Php'),
                          ],
                        ),
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: ((context) => PHPPromoScreen()),
                            ),
                          );
                        },
                      ),
                    ),
                    Card(
                      elevation: 9,
                      child: GestureDetector(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/flutter_logo.png',scale: 9),
                            Text('Flutter'),
                          ],
                        ),
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: ((context) => FlutterPromoScreen()),
                            ),
                          );
                        },
                      ),
                    ),
                    Card(
                      elevation: 9,
                      child: GestureDetector(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/software_logo.png',scale: 9),
                            Text('Software development'),
                          ],
                        ),
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: ((context) => SoftPromoScreen()),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}