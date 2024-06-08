import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:kiotride/login.dart';
import 'package:kiotride/bottombar.dart';
import 'package:kiotride/checkpage.dart';
import 'package:kiotride/userpage.dart';
import 'package:kiotride/theme_data.dart';
import 'package:provider/provider.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    IconData iLight = Icons.wb_sunny;
    IconData iDark = Icons.nights_stay;
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
                      onPressed:
                          Provider.of<ThemeProvider>(context).toggleTheme,
                      icon: Icon(iLight),
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
            title: Text(
              'Messages',
              style: TextStyle(fontWeight: FontWeight.w800),
            ),
            onTap: () {
              // Handle the tap here
            },
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text(
              'Profile',
              style: TextStyle(fontWeight: FontWeight.w800),
            ),
            onTap: () {
              // Handle the tap here
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text(
              'Settings',
              style: TextStyle(fontWeight: FontWeight.w800),
            ),
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
              color: Theme.of(context).colorScheme.primary,
            ),
            textAlign: TextAlign.center,
          ))
        ],
      ),
    );
  }
}
