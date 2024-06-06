import 'package:flutter/material.dart';
import 'package:kiotride/login.dart';
import 'package:kiotride/buspage.dart';
import 'package:kiotride/checkpage.dart';
import 'package:kiotride/userpage.dart';
import 'package:kiotride/bottombar.dart';

class Student {
  final String photo;
  final String name;
  final String id;

  Student({required this.photo, required this.name, required this.id});
}

final List<Student> students = [
  Student(
    photo: 'assets/peoples/abbas.webp',
    name: 'Abbas Seid',
    id: 'Wour/1358/13',
  ),
  Student(
    photo: 'assets/girlethio.jpg',
    name: 'Ahmed Omar',
    id: 'Wour/4560/13',
  ),
  Student(
    photo: 'assets/girlethio.jpg',
    name: 'Ayub Assefa',
    id: 'Wour/3941/13',
  ),
  Student(
    photo: 'assets/girlethio.jpg',
    name: 'Bahrean Assefa',
    id: 'Wour/4605/13',
  ),
  Student(
    photo: 'assets/girlethio.jpg',
    name: 'Daniel Gebre',
    id: '0685/13',
  ),
  Student(
    photo: 'assets/girlethio.jpg',
    name: 'Dawit Habtamu',
    id: 'Wour/0715/13',
  ),
  Student(
    photo: 'assets/girlethio.jpg',
    name: 'Elias Getachew',
    id: 'Wour/3948/13',
  ),
  Student(
    photo: 'assets/girlethio.jpg',
    name: 'Ermiyas Azanew',
    id: 'Wour/1036/13',
  ),
  Student(
    photo: 'assets/girlethio.jpg',
    name: 'Esmael Eshetu',
    id: 'Wour/0932/13',
  ),
  Student(
    photo: 'assets/girlethio.jpg',
    name: 'Fikir Belete',
    id: '1036/13',
  ),
  Student(
    photo: 'assets/girlethio.jpg',
    name: 'Firdos Mohammed',
    id: 'Wour/3927/13',
  ),
  Student(
    photo: 'assets/girlethio.jpg',
    name: 'Halewya Mehfuz',
    id: 'Wour/1534/13',
  ),
  Student(
    photo: 'assets/girlethio.jpg',
    name: 'Hermela Solomon',
    id: 'Wour/1307/13',
  ),
  Student(
    photo: 'assets/girlethio.jpg',
    name: 'Hilary Solomon',
    id: 'Wour/1325/13',
  ),
  Student(
    photo: 'assets/girlethio.jpg', // Placeholder image URL
    name: 'Kaleb Tesfaye',
    id: 'Wour/1443/13',
  ),
  Student(
    photo: 'assets/peoples/qal.webp', // Placeholder image URL
    name: 'Kalkidan Solomon',
    id: 'Wour/3953/13',
  ),
  Student(
    photo: 'assets/girlethio.jpg', // Placeholder image URL
    name: 'Leulseged Eshetu',
    id: 'Wour/4537/13',
  ),
  Student(
    photo: 'assets/girlethio.jpg', // Placeholder image URL
    name: 'Marta Dame',
    id: 'Wour/1656/13',
  ),
  Student(
    photo: 'assets/girlethio.jpg', // Placeholder image URL
    name: 'Mesud Omar',
    id: 'Wour/4536/13',
  ),
  Student(
    photo: 'assets/girlethio.jpg', // Placeholder image URL
    name: 'Michael Ashenafi',
    id: 'Wour/1774/13',
  ),
  Student(
    photo: 'assets/girlethio.jpg', // Placeholder image URL
    name: 'Mohammed Hussen',
    id: 'Wour/1844/13',
  ),
  Student(
    photo: 'assets/peoples/nahom.webp', // Placeholder image URL
    name: 'Nahom Abraham',
    id: 'Wour/1939/13',
  ),
  Student(
    photo: 'assets/peoples/natnael.webp', // Placeholder image URL
    name: 'Natnael Abebe',
    id: '1964/13',
  ),
  Student(
    photo: 'assets/girlethio.jpg', // Placeholder image URL
    name: 'Nuru Hussen',
    id: 'Wour/4531/13',
  ),
  Student(
    photo: 'assets/girlethio.jpg', // Placeholder image URL
    name: 'Salim Abdu',
    id: 'Wour/3957/13',
  ),
  Student(
    photo: 'assets/girlethio.jpg', // Placeholder image URL
    name: 'Sara Mersha',
    id: 'Wour/1939/13',
  ),
  Student(
    photo: 'assets/girlethio.jpg', // Placeholder image URL
    name: 'Seblewerk Tesfaye',
    id: 'Wour/4567/13',
  ),
  Student(
    photo: 'assets/peoples/tg.webp', // Placeholder image URL
    name: 'Tiegist Girma',
    id: 'Wour/4194/13',
  ),
  Student(
    photo: 'assets/girlethio.jpg', // Placeholder image URL
    name: 'Tinsae Kefale',
    id: 'Wour/4194/13',
  ),
  Student(
    photo: 'assets/girlethio.jpg', // Placeholder image URL
    name: 'Zelalem Beyene',
    id: 'Wour/4606/13',
  ),
];

class Userlist extends StatelessWidget {
  final List<Student> students;

  Userlist({required this.students});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListTiles Example'),
      ),
      body: Stack(
        children: [
          ListView.builder(
            itemCount: students.length,
            itemBuilder: (context, index) {
              final student = students[index];
              return ListTile(
                leading: ClipOval(
                  child: Image.asset(
                    student.photo ??
                        'assets/placeholder.png', // Use placeholder image if photo is null
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                ),
                title: Text(student.name),
                subtitle: Text(student.id),
              );
            },
          ),
        ],
      ),
    );
  }
}
