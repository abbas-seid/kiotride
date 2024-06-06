import 'package:flutter/material.dart';
import 'package:kiotride/login.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var widthy = screenSize.width;
    var heighty = screenSize.height;
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset(
          'assets/bus.png',
        ),
        title: Text(
          'KIOTRIDE',
          style:
              TextStyle(fontWeight: FontWeight.bold, color: Color(0xff3B3B3B)),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(36),
        child: Column(
          children: [
            SizedBox(height: heighty * 0.04),
            Displayer(
              name: 'Rahel Yohannes',
              idnumb: 'Wour/1274/13',
              buscode: 'Bus-Code-3312',
            ),
          ],
        ),
      ),
    );
  }
}

class Displayer extends StatelessWidget {
  final String name;
  final String idnumb;
  final String buscode;

  const Displayer({
    Key? key,
    required this.name,
    required this.idnumb,
    required this.buscode,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var heighty = screenSize.height;

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ClipOval(
            child: Image.asset(
              'assets/girlethio.jpg', // Replace with your image URL
              width: 140,
              height: 140,
              fit: BoxFit.cover, // Adjust the fit as needed
            ),
          ),
          SizedBox(
            height: heighty * 0.10,
          ),
          Container(
            height: heighty * 0.11, // Adjust the height as needed
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color:
                  Color(0xFFF7CB2D), // Added color to make the border visible
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.assignment_ind_rounded,
                  size: 30,
                  color: Colors.white, // Changed color for visibility
                ),
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.white, // Changed color for visibility
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: heighty * 0.04),
          Container(
            height: heighty * 0.11, // Adjust the height as needed
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color:
                  Color(0xFFF7CB2D), // Added color to make the border visible
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.insights,
                  size: 30,
                  color: Colors.white, // Changed color for visibility
                ),
                Text(
                  idnumb,
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.white, // Changed color for visibility
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: heighty * 0.04),
          Container(
            height: heighty * 0.11, // Adjust the height as needed
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color:
                  Color(0xFFF7CB2D), // Added color to make the border visible
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.bus_alert,
                  size: 30,
                  color: Colors.white, // Changed color for visibility
                ),
                Text(
                  buscode,
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.white, // Changed color for visibility
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}