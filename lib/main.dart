import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'second.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Color(0xFF3A6FE2),
            Color(0xFF9E7BF5),
          ], begin: Alignment.topCenter),
        ),
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 380,
                  margin: EdgeInsets.fromLTRB(0, 170, 0, 80),
                  child: Column(
                    children: [
                      Container(
                        height: 300,
                        width: 300,
                        child: Image.asset(
                          'assets/780e0e64d323aad2cdd5 2.png',
                          fit: BoxFit.contain,
                          width: 250,
                          height: 250,
                        ),
                      ),
                      Text(
                        'Welcome To',
                        style: GoogleFonts.poppins(
                          fontSize: 40,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Dart App',
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 53,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => postpage()),
                      );
                    },
                    child: Container(
                      width: 214,
                      child: Center(
                        child: Text(
                          'Get Started',
                          style: GoogleFonts.poppins(
                            color: Color(0xFF3C6FE2),
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Align(
              child: Image.asset('assets/Clip path group.png'),
              alignment: Alignment.topRight,
            ),
            Align(
              child: Image.asset('assets/Clip path group (1).png'),
              alignment: Alignment.bottomLeft,
            ),
          ],
        ),
      ),
    );
  }
}
