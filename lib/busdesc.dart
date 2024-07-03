import 'package:flutter/material.dart';

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
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
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
                      color: Theme.of(context).colorScheme.onSecondary,
                    ),
                    child: Text(
                      'bus schedule\nMorning 1:00 From $destin to KIOT Campus\nAfternoon 11:00 From KIOT Campus to $destin',
                      style: TextStyle(
                        fontSize: 16,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Container(
                    width: widthy * 0.9,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Theme.of(context).colorScheme.onSecondary,
                    ),
                    child: Text(
                      'Striding For Quality!!',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.primary,
                      ),
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
        color: Theme.of(context).colorScheme.onSecondary,
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).colorScheme.shadow, // Shadow color
            spreadRadius: 1.5, // Spread radius
            blurRadius: 0.2, // Blur radius
            offset: Offset(0, 0), // Shadow position
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Theme.of(context).colorScheme.primary),
          ),
          Text(
            content,
            style: TextStyle(
                fontSize: 29,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.primary),
          ),
        ],
      ),
    );
  }
}
