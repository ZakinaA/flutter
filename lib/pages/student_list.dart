import 'package:flutter/material.dart';
import 'package:webstudent/models/student.dart';
import 'package:webstudent/services/api.dart';
import 'package:webstudent/widgets/student_tile.dart';
import 'package:webstudent/widgets/menu.dart';
import 'package:webstudent/pages/student_detail.dart';

class StudentList extends StatefulWidget {
  const StudentList({Key? key}) : super(key: key);

  @override
  _StudentListState createState() => _StudentListState();
}

class _StudentListState extends State<StudentList> {
  late Future<List<Student>> _studentsFuture;

  @override
  void initState() {
    super.initState();
    _studentsFuture = Api.getStudents();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Liste des élèves'),
      ),
      body: Center(
        child: FutureBuilder<List<Student>>(
          future: _studentsFuture,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              final students = snapshot.data!;

              return ListView.builder(
                itemCount: students.length,
                itemBuilder: (context, index) {
                  final student = students[index];

                  return StudentTile(
                    student: student,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => StudentDetail(student: student),
                        ),
                      );
                    },
                  );
                },
              );
            } else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }

            return const CircularProgressIndicator();
          },
        ),
      ),
      drawer: Menu(),
    );
  }
}
