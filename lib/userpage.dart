import 'package:flutter/material.dart';
import 'package:kiotride/bottombar.dart';

class UserPage extends StatefulWidget {
  final String name;
  final String idnumb;
  final String buscode;
  final String imageUrl;

  const UserPage({
    Key? key,
    required this.name,
    required this.idnumb,
    required this.buscode,
    required this.imageUrl,
  }) : super(key: key);

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    IconData iLight = Icons.wb_sunny;
    IconData iDark = Icons.nights_stay;
    var screenSize = MediaQuery.of(context).size;
    var widthy = screenSize.width;
    var heighty = screenSize.height;
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        leading: Image.asset(
          'assets/bus.png',
        ),
        title: Text(
          'KIOTRIDE',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(36),
        child: Column(
          children: [
            SizedBox(height: heighty * 0.01),
            Displayer(
              name: widget.name,
              idnumb: widget.idnumb,
              buscode: widget.buscode,
              imageUrl: widget.imageUrl, // Corrected access to imageUrl
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}

class Displayer extends StatelessWidget {
  final String name;
  final String idnumb;
  final String buscode;
  final String imageUrl;

  const Displayer({
    Key? key,
    required this.name,
    required this.idnumb,
    required this.buscode,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var heighty = screenSize.height;

    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => ImageScreen(imageUrl: imageUrl),
                ),
              );
            },
            child: Hero(
              tag: imageUrl,
              child: ClipOval(
                child: Image.asset(
                  imageUrl, // Replace with your image URL
                  width: 140,
                  height: 140,
                  fit: BoxFit.cover, // Adjust the fit as needed
                ),
              ),
            ),
          ),
          SizedBox(
            height: heighty * 0.05,
          ),
          Container(
            height: heighty * 0.09, // Adjust the height as needed
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Theme.of(context)
                  .colorScheme
                  .surface, // Added color to make the border visible
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.assignment_ind_rounded,
                  size: 30,
                  color: Theme.of(context)
                      .colorScheme
                      .onSurface, // Changed color for visibility
                ),
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: heighty * 0.04),
          Container(
            height: heighty * 0.09, // Adjust the height as needed
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Theme.of(context)
                  .colorScheme
                  .surface, // Added color to make the border visible
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.insights,
                  size: 30,
                  color: Theme.of(context)
                      .colorScheme
                      .onSurface, // Changed color for visibility
                ),
                Text(
                  idnumb,
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context)
                        .colorScheme
                        .onSurface, // Changed color for visibility
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: heighty * 0.04),
          Container(
            height: heighty * 0.09, // Adjust the height as needed
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Theme.of(context).colorScheme.surface,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.bus_alert,
                  size: 30,
                  color: Theme.of(context)
                      .colorScheme
                      .onSurface, // Changed color for visibility
                ),
                Text(
                  buscode,
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context)
                        .colorScheme
                        .onSurface, // Changed color for visibility
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

class ImageScreen extends StatelessWidget {
  final String imageUrl;

  const ImageScreen({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Set background color to black
      appBar: AppBar(
        backgroundColor: Colors.black, // Set app bar color to black
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () {
            Navigator.pop(
                context); // Navigate back when close button is pressed
          },
        ),
      ),
      body: Center(
        child: Hero(
          tag: imageUrl,
          child: Image.asset(
            imageUrl,
            fit: BoxFit.contain, // Fit the image inside the screen
          ),
        ),
      ),
    );
  }
}
