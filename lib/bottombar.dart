import 'package:flutter/material.dart';
import 'package:kiotride/buspage.dart';
import 'package:kiotride/checkpage.dart';
import 'package:kiotride/userlist.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: 87,
        margin: EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 22,
        ),
        child: Stack(
          children: [
            Positioned(
              right: 0,
              left: 0,
              top: 17,
              child: Container(
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(25),
                  ),
                  color: Theme.of(context).colorScheme.primary,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BusPage(),
                            ),
                          );
                        },
                        icon: Icon(
                          Icons.bus_alert,
                          color: Theme.of(context).colorScheme.onSecondary,
                        ),
                      ),
                    ),
                    Expanded(
                      child: IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  CheckPage(students: students),
                            ),
                          );
                        },
                        icon: Icon(
                          Icons.person_search,
                          color: Theme.of(context).colorScheme.onSecondary,
                        ),
                      ),
                    ),
                    Expanded(
                      child: IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  Userlist(students: students),
                            ),
                          );
                        },
                        icon: Icon(
                          Icons.group,
                          color: Theme.of(context).colorScheme.onSecondary,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
            /**/
            ,
          ],
        ),
      ),
    );
  }
}
