import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:kiotride/login.dart';
import 'package:kiotride/bottombar.dart';
import 'package:kiotride/checkpage.dart';
import 'package:kiotride/userpage.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/wolloback.webp'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.bottomRight,
                    child: IconButton(
                      onPressed: () {
                        // Handle the IconButton tap here
                      },
                      icon: Icon(Icons.light_mode_rounded),
                      color: Colors.black,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      '',
                    ),
                  ),
                ],
              )),
          ListTile(
            leading: Icon(Icons.message),
            title: Text('Messages'),
            onTap: () {
              // Handle the tap here
            },
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Profile'),
            onTap: () {
              // Handle the tap here
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () {
              // Handle the tap here
            },
          ),
          SizedBox(height: 90),
          Center(
              child: Text(
            'Designed and Developed By Group 5',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
            textAlign: TextAlign.center,
          ))
        ],
      ),
    );
  }
}
