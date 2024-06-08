import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:kiotride/login.dart';
import 'package:kiotride/bottombar.dart';
import 'package:kiotride/checkpage.dart';
import 'package:kiotride/userpage.dart';
import 'package:kiotride/mydrawer.dart';

class BusDesc extends StatelessWidget {
  final String destin;
  final String busid;
  final String from;

  BusDesc({required this.destin, required this.busid, required this.from});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var widthy = screenSize.width;
    var heighty = screenSize.height;
    return Scaffold(
      backgroundColor: Color(0xECFFFFFF),
      body: Center(
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Image.asset(
                'assets/busground.jpg',
                width: widthy,
                height: heighty * 0.35,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: heighty * 0.31,
              left: widthy * 0.05,
              right: widthy * 0.05,
              child: Column(
                children: [
                  BusDescItem(
                    title: 'From',
                    content: from,
                  ),
                  SizedBox(height: 20),
                  BusDescItem(
                    title: 'To',
                    content: destin,
                  ),
                  SizedBox(height: 20),
                  BusDescItem(
                    title: 'Bus-Code',
                    content: busid,
                  ),
                  SizedBox(height: 30),
                  Container(
                    width: widthy * 0.9,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Text(
                      'bus schedule\nMorning 1:00 From Quteba to KIOT Campus\nAfternoon 11:00 From KIOT Campus to Quteba',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  SizedBox(height: 30),
                  Container(
                    width: widthy * 0.9,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Text(
                      'Your Bus!!!',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BusDescItem extends StatelessWidget {
  final String title;
  final String content;

  BusDescItem({
    required this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var widthy = screenSize.width;
    var heighty = screenSize.height;
    return Container(
      width: widthy * 0.86,
      height: heighty * 0.10,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0xff34586E)),
          ),
          Text(
            content,
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xff34586E)),
          ),
        ],
      ),
    );
  }
}
