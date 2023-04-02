import 'package:flutter/material.dart';
import 'package:webstudent/models/student.dart';

class StudentDetail extends StatelessWidget {
  final Student student;

  const StudentDetail({Key? key, required this.student}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${student.prenom} ${student.nom}'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${student.prenom} ${student.nom}',
              style: Theme.of(context).textTheme.headline4,
            ),
            const SizedBox(height: 8.0),
            Text(
              'Date de naissance : ${student.dateNaiss}',
              style: Theme.of(context).textTheme.subtitle1,
            ),
            const SizedBox(height: 16.0),
            Text(
              'Maison : ${student.maison.nom}',
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ],
        ),
      ),
    );
  }
}
