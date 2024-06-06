import 'package:flutter/material.dart';
import 'dart:async' show Timer;
import 'package:kiotride/login.dart';
import 'package:kiotride/buspage.dart';
import 'package:kiotride/checkpage.dart';
import 'package:kiotride/userpage.dart';
import 'package:kiotride/bottombar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    // Execute the navigation after the frame has been built
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      // Navigates to the BusPage after 2 seconds
      Future.delayed(Duration(seconds: 2), () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => BusPage(),
          ),
        );
      });
    });
  }

  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var widthy = screenSize.width;
    var heighty = screenSize.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              width: widthy * 0.60,
              'assets/bus.png',
            ),
            SizedBox(
              height: heighty * 0.03,
            ),
            SizedBox(
              child: Text('KIOTRIDE',
                  style: TextStyle(
                      color: Color(0xFFF7CB2D),
                      fontSize: 40,
                      fontFamily: 'Cinzel',
                      fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: heighty * 0.10,
            ),
            SizedBox(
              child: Text('WELCOME',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontFamily: 'Cinzel',
                    fontWeight: FontWeight.bold,
                  )),
            ),
            SizedBox(
              child: Text('Your Campus, Your Ride, Your Way!!!',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
