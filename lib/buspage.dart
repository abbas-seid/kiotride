import 'package:flutter/material.dart';
import 'package:kiotride/bottombar.dart';
import 'package:kiotride/busdesc.dart';
import 'package:kiotride/mydrawer.dart';

class BusPage extends StatefulWidget {
  const BusPage({super.key});

  @override
  State<BusPage> createState() => _BusPageState();
}

class _BusPageState extends State<BusPage> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var widthy = screenSize.width;
    var heighty = screenSize.height;

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        actions: [
          Image.asset(
            'assets/bus.png',
            height: 36,
          ),
        ],
      ),
      drawer: MyDrawer(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              'Bus time.',
              style: TextStyle(
                  fontSize: 31,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.primary),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset(
                'assets/buside.png',
                width: widthy * 0.70,
              ),
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              'Choose Your Bus',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.primary),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Expanded(
              child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomButton(
                      text: 'Bus-1',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BusDesc(
                              destin: 'Quteba',
                              busid: '3312',
                              from: 'KIOT Campus',
                            ),
                          ),
                        );
                      }),
                  CustomButton(
                      text: 'Bus-2',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BusDesc(
                              destin: 'Dessie',
                              busid: '3313',
                              from: 'KIOT Campus',
                            ),
                          ),
                        );
                      }),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomButton(
                      text: 'Bus-3',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BusDesc(
                              destin: 'Sheshaber',
                              busid: '3314',
                              from: 'KIOT Campus',
                            ),
                          ),
                        );
                      }),
                  CustomButton(
                      text: 'Bus-4',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BusDesc(
                              destin: 'Adisu Menafesha',
                              busid: '3315',
                              from: 'KIOT Campus',
                            ),
                          ),
                        );
                      }),
                ],
              ),
            ],
          ))
        ],
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CustomButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 8),
        height: 60,
        width: 130,
        padding: EdgeInsets.all(4),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          // Border color for visibility
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: Theme.of(context)
                  .colorScheme
                  .onSurface, // Text color for visibility
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
