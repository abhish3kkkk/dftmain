import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import '../screens/IT_course.dart';

class Home extends StatelessWidget {

  ImagePicker _picker = ImagePicker();
  XFile? _image;

  Future<void> pickImage() async{
    final pickedImage = await _picker.pickImage(source: ImageSource.gallery, imageQuality: 89);
    _image =pickedImage;
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        drawer: Drawer(
          backgroundColor: Colors.blue.shade300,
          child: Column(
            children: [
              DrawerHeader(
                child: Image.asset('assets/dft_logo.png'),
              ),
        ListTile(
                          leading: Icon(Icons.book_outlined,color: Colors.white,size: 25),
                          title: FittedBox(
                            child: Text('certificate',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 29,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          onTap: (){

                          }
                      ),
                      ListTile(
                          leading: Icon(Icons.notifications_active_outlined,color: Colors.white,size: 25),
                          title: FittedBox(
                            child: Text('Notification',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 29,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          onTap: (){

                          }
                      ),
                      ListTile(
                          leading: Icon(Icons.settings,color: Colors.white,size: 25),
                          title: FittedBox(
                            alignment: Alignment.centerLeft,
                            fit: BoxFit.none,
                            child: Text('Settings',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 21,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          onTap: (){

                          }
                      ),

                      ListTile(
                          leading: Icon(Icons.power_settings_new,color: Colors.white,size: 25),
                          title: FittedBox(
                            alignment: Alignment.centerLeft,
                            fit: BoxFit.none,
                            child: Text('Logout',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 21,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          onTap: (){

                          }
                      ),
                      ListTile(
                          leading: Icon(Icons.arrow_back_ios_new_outlined,color: Colors.white,size: 25),
                          title: FittedBox(
                            alignment: Alignment.centerLeft,
                            fit: BoxFit.none,
                            child: Text('Back',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 21,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          onTap: (){
                            Navigator.of(context).pop();
                          }
                      ),
            ],
          ),
        ),
        appBar: AppBar(
          elevation: 4,
          shadowColor: Colors.blue,
          backgroundColor: Colors.blue.shade200,
          systemOverlayStyle: SystemUiOverlayStyle.light,
          toolbarHeight: 80,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                flex:2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Welcome!',style: TextStyle(fontSize:25,fontWeight: FontWeight.bold,color: Colors.white,fontStyle: FontStyle.italic)),
                    Text('user name',style: TextStyle(fontSize:15,fontWeight: FontWeight.bold,color: Colors.white,)),
                  ],
                ),
              ),
              IconButton(
                icon: Icon(Icons.notification_add_outlined,color: Colors.white,shadows: [Shadow(color: Colors.black38,blurRadius: 13,offset: Offset(-3, 4))]),
                onPressed: (){

                },
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          height: MediaQuery.sizeOf(context).height*.07,
          margin: EdgeInsets.only(bottom: 35,right: 20,left: 20, top: 5 ),
          decoration: BoxDecoration(
            color: Colors.white70,
            borderRadius: BorderRadius.circular(19),
            boxShadow: [BoxShadow(
              color: Colors.black38,
              blurRadius: 9,
              blurStyle: BlurStyle.outer,
            )],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: Icon(Icons.person,shadows: [Shadow(color: Colors.black38,blurRadius: 13,offset: Offset(-3, 4))]),
                onPressed: (){

                },
              ),
              IconButton(
                icon: Icon(Icons.book_outlined,size: 30,shadows: [Shadow(color: Colors.black38,blurRadius: 17,offset: Offset(-3, 4))]),
                onPressed: (){

                },
              ),
              IconButton(
                icon: Icon(Icons.paste_sharp,size: 30,shadows: [Shadow(color: Colors.black38,blurRadius: 17,offset: Offset(-3, 4))]),
                onPressed: (){

                },
              ),
              IconButton(
                icon: Icon(Icons.settings,size: 30,shadows: [Shadow(color: Colors.black38,blurRadius: 17,offset: Offset(-3, 4))]),
                onPressed: (){

                },
              ),
            ],
          ),
        ),
        body: HomeMain(),
      ),
    );
  }
}

class HomeMain extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<HomeMain> {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SearchBar(
              backgroundColor: WidgetStateProperty.all(Colors.white),
              hintText: 'search',
              onChanged: (value) {

              },
              shadowColor: WidgetStateProperty.all(Colors.blue),
            ),
            SizedBox(height: MediaQuery.sizeOf(context).height*.03),
            Text('Courses',style: TextStyle(color: Colors.deepOrange,fontWeight :FontWeight.bold,fontSize: 20)),
            Expanded(
              flex: 0,
              child: Container(

                height: MediaQuery.sizeOf(context).height*.25,
                padding: EdgeInsets.all(3),
                //margin: EdgeInsets.all(10),
                child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          child: Image.asset('assets/flutter_logo.png',scale: 12),
                          onTap: (){

                          },
                        ),
                        SizedBox(width: 30,),
                        GestureDetector(
                          child: Image.asset('assets/C_logo.png',scale: 23),
                          onTap: (){

                          },
                        ),
                        SizedBox(width: 30,),
                        GestureDetector(
                          child: Image.asset('assets/android_logo.png',scale: 23),
                          onTap: (){

                          },
                        ),
                        SizedBox(width: 30,),
                        GestureDetector(
                          child: Image.asset('assets/dart_logo.png',scale: 3.5),
                          onTap: (){

                          },
                        ),
                        SizedBox(width: 30,),
                        GestureDetector(
                          child: Image.asset('assets/java_logo.png',scale: 22.5),
                          onTap: (){

                          },
                        ),
                        SizedBox(width: 30,),
                        GestureDetector(
                          child: Image.asset('assets/ios_logo.png',scale: 6),
                          onTap: (){

                          },
                        ),
                      ],
                    )
                ),
              ),
            ),
            SizedBox(height: 10),
            Text('Recommendations',style: TextStyle(color: Colors.deepOrange,fontSize: 20,fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
            Expanded(
              flex: 0,
              child: Container(
                height: MediaQuery.sizeOf(context).height*.45,
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
                        child: Image.asset('assets/it_logo.png',scale: 12),
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: ((context) => ITScreen()),
                            ),
                          );
                        },
                      ),
                    ),
                    Card(
                      elevation: 9,
                      child: GestureDetector(
                        child: Image.asset('assets/it_logo.png',scale: 12),
                        onTap: (){

                        },
                      ),
                    ),
                    Card(
                      elevation: 9,
                      child: GestureDetector(
                        child: Image.asset('assets/it_logo.png',scale: 12),
                        onTap: (){

                        },
                      ),
                    ),
                    Card(
                      elevation: 9,
                      child: GestureDetector(
                        child: Image.asset('assets/it_logo.png',scale: 12),
                        onTap: (){

                        },
                      ),
                    ),
                    Card(
                      elevation: 9,
                      child: GestureDetector(
                        child: Image.asset('assets/it_logo.png',scale: 12),
                        onTap: (){

                        },
                      ),
                    ),
                    Card(
                      elevation: 9,
                      child: GestureDetector(
                        child: Image.asset('assets/it_logo.png',scale: 12),
                        onTap: (){

                        },
                      ),
                    ),
                    Card(
                      elevation: 9,
                      child: GestureDetector(
                        child: Image.asset('assets/it_logo.png',scale: 12),
                        onTap: (){

                        },
                      ),
                    ),
                    Card(
                      elevation: 9,
                      child: GestureDetector(
                        child: Image.asset('assets/it_logo.png',scale: 12),
                        onTap: (){

                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 50),
            Text('Dynamic Future Tech'),
          ],
        ),
      ),
    );
  }
}