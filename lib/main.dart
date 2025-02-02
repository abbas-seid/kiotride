import 'package:flutter/material.dart';
import 'dart:async' show Timer;
import 'package:kiotride/login.dart';
import 'package:kiotride/buspage.dart';
import 'package:provider/provider.dart';
import 'package:kiotride/theme_data.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => ThemeProvider(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: Provider.of<ThemeProvider>(context).themeData,
      darkTheme: Provider.of<ThemeProvider>(context).themeData,
      home: MyHomePage(),
      routes: {
        '/buspage': (context) => BusPage(),
      },
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
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      // Navigates to the BusPage after 4 seconds
      Future.delayed(Duration(seconds: 4), () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => LoginScreen(),
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
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
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
                    color: Theme.of(context).colorScheme.background,
                    fontSize: 30,
                    fontFamily: 'Cinzel',
                    fontWeight: FontWeight.bold,
                  )),
            ),
            SizedBox(
              child: Text('Your Campus, Your Ride, Your Way!!!',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.background,
                    fontSize: 20,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
