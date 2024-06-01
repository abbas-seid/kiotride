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
    );
  }
}
