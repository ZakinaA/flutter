import 'package:flutter/material.dart';
import 'package:webstudent/models/student.dart';


class StudentTile extends StatelessWidget {
  final Student student;
  final VoidCallback onTap;

  const StudentTile({
    Key? key,
    required this.student,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('${student.prenom} ${student.nom}'),
      //subtitle: Text('${student.prenom}'),
      onTap: onTap,
    );
  }
}
