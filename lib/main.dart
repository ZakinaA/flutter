import 'package:flutter/material.dart';
import 'package:webstudent/pages/student_detail.dart';
import 'package:webstudent/pages/student_list.dart';
import 'package:webstudent/models/student.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mon application',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => StudentList(),
        '/detail': (context) => StudentDetail(student: ModalRoute.of(context)!.settings.arguments as Student),
      },
    );
  }
}
