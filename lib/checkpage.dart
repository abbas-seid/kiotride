import 'package:flutter/material.dart';
import 'package:kiotride/login.dart';
import 'package:kiotride/buspage.dart';
import 'package:kiotride/checkpage.dart';
import 'package:kiotride/userpage.dart';
import 'package:kiotride/bottombar.dart';
import 'package:kiotride/userlist.dart';
import 'package:kiotride/mydrawer.dart';

class CheckPage extends StatefulWidget {
  final List<Student> students;
  const CheckPage({super.key, required this.students});

  @override
  State<CheckPage> createState() => _CheckPageState();
}

class _CheckPageState extends State<CheckPage> {
  final TextEditingController _idController = TextEditingController();
  List<Student> _filteredStudents = [];
  bool _searched = false;

  void _searchStudent() {
    final query = _idController.text;
    setState(() {
      _filteredStudents = widget.students.where((student) {
        return student.id.contains(query);
      }).toList();
      _searched = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var widthy = screenSize.width;
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
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      'Driver Info Hub.',
                      style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.primary),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Image.asset(
                'assets/buser.png',
                height: 220,
                width: 220,
              ),
              SizedBox(
                height: 70,
              ),
              Container(
                width: widthy * 0.86,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(26.0),
                  border: Border.all(
                    color: Theme.of(context).colorScheme.primary,
                    width: 2.0,
                  ),
                ),
                child: TextField(
                  controller: _idController,
                  decoration: const InputDecoration(
                    labelText: 'Enter Users ID',
                    contentPadding: EdgeInsets.symmetric(horizontal: 12.0),
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: widthy * 0.60,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Theme.of(context).colorScheme.surface),
                    foregroundColor: MaterialStateProperty.all<Color>(
                        Theme.of(context).colorScheme.onSurface),
                  ),
                  onPressed: _searchStudent,
                  child: const Text(
                    'Check User',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              _searched
                  ? Column(
                      children: _filteredStudents.isNotEmpty
                          ? _filteredStudents.map((student) {
                              return Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Container(
                                  padding: EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.0),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.3),
                                        spreadRadius: 2.5,
                                        blurRadius: 1,
                                        offset: Offset(0, 0),
                                      ),
                                    ],
                                  ),
                                  child: ListTile(
                                    leading: ClipOval(
                                      child: Image.asset(
                                        student.photo,
                                        width: 50,
                                        height: 50,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    title: Text(
                                      student.name,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500),
                                    ),
                                    subtitle: Text(student.id),
                                  ),
                                ),
                              );
                            }).toList()
                          : [Text('No students found.')],
                    )
                  : Container(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}
