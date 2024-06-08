import 'package:flutter/material.dart';
import 'package:kiotride/login.dart';
import 'package:kiotride/buspage.dart';
import 'package:kiotride/checkpage.dart';
import 'package:kiotride/userpage.dart';
import 'package:kiotride/bottombar.dart';
import 'package:kiotride/theme_data.dart';
import 'package:provider/provider.dart';

class Student {
  final String photo;
  final String name;
  final String id;
  final String buscode;

  Student(
      {required this.photo,
      required this.name,
      required this.id,
      required this.buscode});
}

final List<Student> students = [
  Student(
      photo: 'assets/peoples/abbas.webp',
      name: 'Abbas Seid',
      id: 'Wour/1358/13',
      buscode: 'Code-3312'),
  Student(
      photo: 'assets/peoples/abebe.webp',
      name: 'Abebe Minale',
      id: 'Wour/3970/13',
      buscode: 'Code-3312'),
  Student(
      photo: 'assets/peoples/ahmed.webp',
      name: 'Ahmed Omar',
      id: 'Wour/4560/13',
      buscode: 'Code-3312'),
  Student(
      photo: 'assets/peoples/aman.webp',
      name: 'Amanuel Mandefro',
      id: 'Wour/0241/13',
      buscode: 'Code-3312'),
  Student(
      photo: 'assets/peoples/ayub.webp',
      name: 'Ayub Assefa',
      id: 'Wour/3941/13',
      buscode: 'Code-3312'),
  Student(
      photo: 'assets/peoples/bahrean.webp',
      name: 'Bahrean Assefa',
      id: 'Wour/4605/13',
      buscode: 'Code-3312'),
  Student(
      photo: 'assets/girlethio.jpg',
      name: 'Daniel Gebre',
      id: '0685/13',
      buscode: 'Code-3312'),
  Student(
      photo: 'assets/peoples/dawit.webp',
      name: 'Dawit Habtamu',
      id: 'Wour/0715/13',
      buscode: 'Code-3312'),
  Student(
      photo: 'assets/girlethio.jpg',
      name: 'Elias Getachew',
      id: 'Wour/3948/13',
      buscode: 'Code-3313'),
  Student(
      photo: 'assets/girlethio.jpg',
      name: 'Ermiyas Azanew',
      id: 'Wour/1036/13',
      buscode: 'Code-3313'),
  Student(
      photo: 'assets/peoples/esmael.webp',
      name: 'Esmael Eshetu',
      id: 'Wour/0932/13',
      buscode: 'Code-3313'),
  Student(
      photo: 'assets/peoples/jerry.webp',
      name: 'Eyerus Abera',
      id: 'Wour/4069/13',
      buscode: 'Code-3313'),
  Student(
      photo: 'assets/girlethio.jpg',
      name: 'Fikir Belete',
      id: '1036/13',
      buscode: 'Code-3313'),
  Student(
      photo: 'assets/girlethio.jpg',
      name: 'Firdos Mohammed',
      id: 'Wour/3927/13',
      buscode: 'Code-3313'),
  Student(
      photo: 'assets/girlethio.jpg',
      name: 'Habtam Yitayew',
      id: 'Wour/1196/13',
      buscode: '3312'),
  Student(
      photo: 'assets/girlethio.jpg',
      name: 'Halewya Mehfuz',
      id: 'Wour/1534/13',
      buscode: 'Code-3313'),
  Student(
      photo: 'assets/girlethio.jpg',
      name: 'Hermela Solomon',
      id: 'Wour/1307/13',
      buscode: 'Code-3313'),
  Student(
      photo: 'assets/peoples/hilary.webp',
      name: 'Hilary Solomon',
      id: 'Wour/1325/13',
      buscode: 'Code-3314'),
  Student(
      photo: 'assets/peoples/hodan.webp',
      name: 'Hodan Mohammed',
      id: 'Wour/1347/13',
      buscode: 'Code-3314'),
  Student(
      photo: 'assets/peoples/kaleb.webp', // Placeholder image URL
      name: 'Kaleb Tesfaye',
      id: 'Wour/1443/13',
      buscode: 'Code-3314'),
  Student(
      photo: 'assets/peoples/qal.webp', // Placeholder image URL
      name: 'Kalkidan Solomon',
      id: 'Wour/3953/13',
      buscode: 'Code-3314'),
  Student(
      photo: 'assets/girlethio.jpg', // Placeholder image URL
      name: 'Leulseged Eshetu',
      id: 'Wour/4537/13',
      buscode: 'Code-3314'),
  Student(
      photo: 'assets/peoples/marta.webp',
      name: 'Marta Dame',
      id: 'Wour/1656/13',
      buscode: 'Code-3314'),
  Student(
      photo: 'assets/girlethio.jpg',
      name: 'Mesud Omar',
      id: 'Wour/4536/13',
      buscode: 'Code-3314'),
  Student(
      photo: 'assets/peoples/mike.webp',
      name: 'Michael Ashenafi',
      id: 'Wour/1774/13',
      buscode: 'Code-3314'),
  Student(
      photo: 'assets/peoples/md.webp',
      name: 'Mohammed Hussen',
      id: 'Wour/1844/13',
      buscode: 'Code-3315'),
  Student(
      photo: 'assets/peoples/nahom.webp',
      name: 'Nahom Abraham',
      id: 'Wour/1939/13',
      buscode: 'Code-3315'),
  Student(
      photo: 'assets/peoples/natnael.webp',
      name: 'Natnael Abebe',
      id: '1964/13',
      buscode: 'Code-3315'),
  Student(
      photo: 'assets/peoples/nuru.webp',
      name: 'Nuru Hussen',
      id: 'Wour/4531/13',
      buscode: 'Code-3315'),
  Student(
      photo: 'assets/girlethio.jpg',
      name: 'Salim Abdu',
      id: 'Wour/3957/13',
      buscode: 'Code-3315'),
  Student(
      photo: 'assets/peoples/sara.webp',
      name: 'Sara Mersha',
      id: 'Wour/1939/13',
      buscode: 'Code-3315'),
  Student(
      photo: 'assets/peoples/seble.webp',
      name: 'Seblewerk Tesfaye',
      id: 'Wour/4567/13',
      buscode: 'Code-3315'),
  Student(
      photo: 'assets/peoples/sol.webp',
      name: 'Solomon Mengesha',
      id: 'Wour/2303/13',
      buscode: 'Code-3315'),
  Student(
      photo: 'assets/peoples/tg.webp',
      name: 'Tiegist Girma',
      id: 'Wour/4194/13',
      buscode: 'Code-3315'),
  Student(
      photo: 'assets/girlethio.jpg', // Placeholder image URL
      name: 'Tinsae Kefale',
      id: 'Wour/4194/13',
      buscode: 'Code-3315'),
  Student(
      photo: 'assets/peoples/zele.webp', // Placeholder image URL
      name: 'Zelalem Beyene',
      id: 'Wour/4606/13',
      buscode: 'Code-3315'),
];

class Userlist extends StatelessWidget {
  final List<Student> students;

  Userlist({required this.students});

  @override
  Widget build(BuildContext context) {
    IconData iLight = Icons.wb_sunny;
    IconData iDark = Icons.nights_stay;
    return Scaffold(
      appBar: AppBar(
        actions: [
          Image.asset(
            'assets/bus.png',
            height: 36,
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: students.length,
        itemBuilder: (context, index) {
          final student = students[index];
          return Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(
              padding: EdgeInsets.all(8.0), // Add padding inside the container
              decoration: BoxDecoration(
                // Add border
                borderRadius: BorderRadius.circular(8.0),
                color: Theme.of(context).scaffoldBackgroundColor,
                boxShadow: [
                  BoxShadow(
                    color: Theme.of(context).colorScheme.shadow, // Shadow color
                    spreadRadius: 2.5, // Spread radius
                    blurRadius: 1, // Blur radius
                    offset: Offset(0, 0), // Shadow position
                  ),
                ],
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => UserPage(
                        name: student.name,
                        idnumb: student.id,
                        buscode: student.buscode,
                        imageUrl: student.photo, // Use student's photo URL
                      ),
                    ),
                  );
                },
                child: ListTile(
                  leading: ClipOval(
                    child: Image.asset(
                      student.photo ??
                          'assets/placeholder.png', // Use placeholder image if photo is null
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                  title: Text(
                    student.name,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Theme.of(context).colorScheme.background,
                    ),
                  ),
                  subtitle: Text(
                    student.id,
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.background,
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
