import 'package:flutter/material.dart';
import 'package:kiotride/theme_data.dart';
import 'package:provider/provider.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    IconData iLight = Icons.wb_sunny;
    IconData iDark = Icons.nights_stay;
    return Scaffold(
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
        actions: [],
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: Provider.of<ThemeProvider>(context).toggleTheme,
                icon: Icon(
                  iLight,
                  color: Theme.of(context).colorScheme.background,
                  size: 150,
                ),
              ),
              Text(
                'Press To Change The Lighting Mode',
                style:
                    TextStyle(color: Theme.of(context).colorScheme.background),
              )
            ],
          ),
        ),
      ),
    );
  }
}
