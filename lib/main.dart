import 'package:flutter/material.dart';

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
                      color: Colors.black,
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
