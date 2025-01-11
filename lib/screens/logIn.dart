import 'package:flutter/material.dart';
import '../screens/signIn.dart';
import '../screens/Home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login App',
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool rememberMe = false;
  bool isPasswordVisible = false;

  void toggleRememberMe(bool value) {
    setState(() {
      rememberMe = value;
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          rememberMe ? "Remember Me is ON" : "Remember Me is OFF",
        ),
        duration: Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(screenWidth > 600 ? 32.0 : 16.0),
        child:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.topCenter, // Position the image at the top right
                  child: Image.asset(
                    'assets/dft_logo.png',
                    width: 150, // Set the image width
                    height: 150, // Set the image height
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            // Username TextField
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: "User name",
                hintStyle: TextStyle(color: Colors.black26),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              ),
              style: TextStyle(color: Colors.black),
            ),
            SizedBox(height: 15),
            // Password TextField
            TextField(
              obscureText: !isPasswordVisible,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: "Password",
                hintStyle: TextStyle(color: Colors.black26),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                suffixIcon: IconButton(
                  icon: Icon(
                    isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                    color: Colors.black26,
                  ),
                  onPressed: () {
                    setState(() {
                      isPasswordVisible = !isPasswordVisible;
                    });
                  },
                ),
              ),
              style: TextStyle(color: Colors.black),
            ),
            SizedBox(height: 10),
            // Remember Me Switch
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Switch(
                      value: rememberMe,
                      activeColor: Colors.blue,
                      onChanged: toggleRememberMe,
                    ),
                    Text("Remember me", style: TextStyle(color: Colors.white54)),
                  ],
                ),
                TextButton(
                  onPressed: () {},
                  child: Text("Forgot password?", style: TextStyle(color: Colors.blue)),
                ),
              ],
            ),
            SizedBox(height: 20),
            //Login Button
            ElevatedButton(
              style: ElevatedButton.styleFrom(minimumSize: Size(double.infinity, 50)),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => Home())
                  ),
                );
              },
              child: Text("Log in", style: TextStyle(fontSize: 18)),
            ),
            SizedBox(height: 20),
            // Register Navigation
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterScreen()),
                );
              },
              child: Text(
                "Don't have an account? Register here",
                style: TextStyle(color: Colors.blue),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  child: Image.asset('assets/facebook.png',scale: 5),
                  onTap:(){

                  }
                ),
                GestureDetector(
                    child: Image.asset('assets/google.png',scale: 5),
                    onTap:(){

                    }
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
